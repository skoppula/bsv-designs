import numpy as np
import os

def bin_pad(s, length):
    if len(s) >= length: return s
    return '0'*(length - len(s)) + s

def conv_fxpt(num, prec_int=2, prec_dec=6):
    # add case where decimal part fixed '1
    upper_bound = 2**(prec_int - 1) - 2**(-prec_dec)
    lower_bound = -2**(prec_int - 1)
    total_prec = prec_int + prec_dec
    if num < lower_bound or num > upper_bound:
        print("range clipping", num, lower_bound, upper_bound)
    num = max(num, lower_bound)
    num = min(num, upper_bound)
    scaled_num = int(round(num * 2**(prec_dec)))
    return float(scaled_num)/(2**prec_dec)

def conv_fxpt_bin(num, prec_int=2, prec_dec=6):
    # add case where decimal part fixed '1
    scaled_num = int(conv_fxpt(num, prec_int, prec_dec)*(2**prec_dec))
    total_prec = prec_int + prec_dec
    if scaled_num < 0:
        pos_scaled_num = -1*scaled_num
        int_bin_str = bin(pos_scaled_num)[2:][-total_prec:]
        int_bin_str = bin_pad(int_bin_str, total_prec)
        inverse_bit_str = ''.join(['0' if c == '1' else '1' for c in int_bin_str])
        int_repr_twos_complement = int(inverse_bit_str, 2) + 1
        twos_comp_bin_str = bin(int_repr_twos_complement)[-total_prec:]
        return bin_pad(twos_comp_bin_str, total_prec)
    else:
        int_bin_str = bin(scaled_num)[2:][-total_prec:]
        return bin_pad(int_bin_str, total_prec)

def conv_arr_fxpt(arr, prec_int=2, prec_dec=6):
    f = np.vectorize(conv_fxpt)
    return f(arr)

def run_fxpt_tests():
    pos_tests = [
    (0.500000,'00100000'),
    (0.25000,'00010000'),
    (0.68750,'00101100'),
    (0.00000,'00000000'),
    (0.00000,'00000000'),
    (0.68750,'00101100'),
    (0.09375,'00000110'),
    ]

    neg_tests = [
    (-1.00000,'11000000'),
    (-0.25000,'11110000'),
    (-0.09375,'11111010'),
    ]

    for num,truth in neg_tests:
        print(num, conv_fxpt_bin(num), truth)
        print()

def load_weights(path='memory/weights.npz'):
    num_layers = 4; matrix_width = 8; matrix_height = 8
    if os.path.isfile(path):
        print('Loading from previous weights npz array.')
        npzfile = np.load(path)
        main_weights = npzfile['main_weights']
        pos_consts = npzfile['pos_consts']
        neg_consts = npzfile['neg_consts']
        bias = npzfile['bias']
    else:
        main_weights = np.random.randint(3, size=(num_layers, matrix_height, matrix_width)) - 1
        pos_consts = np.random.rand(num_layers)*2 - 1
        neg_consts = np.random.rand(num_layers)*2 - 1
        bias = np.random.rand(num_layers)*2 - 1
        np.savez(path, main_weights=main_weights, pos_consts=pos_consts, neg_consts=neg_consts, bias=bias)
    return main_weights, pos_consts, neg_consts, bias

def create_weight_bram(main_weights, pos_consts, neg_consts, bias):

    tmp = -2*main_weights
    transcribed_weights = np.where(tmp == -2, np.ones(tmp.shape), tmp)

    n_bits_weight_row = main_weights.shape[1]*2
    with open('memory/weights.binarymem.txt', 'w') as f1:
        with open('memory/weights.ascii.txt', 'w') as f2:
            with open('memory/weights.fxpt.txt', 'w') as f3:
                for i, layer_matrix in enumerate(transcribed_weights):
                    for j, row in enumerate(layer_matrix):
                        nums = ['{0:02b}'.format(int(num)) for num in list(row)]
                        f1.write(''.join(nums) + '\n')
                        nums = [str(num) if len(str(num)) == 2 else ' ' + str(num) for num in list(main_weights[i, j])]
                        f2.write(' '.join(nums) + '\n')
                        f3.write(' '.join(nums) + '\n')

                    f1.write(bin_pad(conv_fxpt_bin(pos_consts[i]), n_bits_weight_row) + '\n')
                    f1.write(bin_pad(conv_fxpt_bin(neg_consts[i]), n_bits_weight_row) + '\n')
                    f1.write(bin_pad(conv_fxpt_bin(bias[i]), n_bits_weight_row) + '\n')

                    f2.write(str(pos_consts[i]) + '\n')
                    f2.write(str(neg_consts[i]) + '\n')
                    f2.write(str(bias[i]) + '\n')

                    f3.write(str(conv_fxpt(pos_consts[i])) + '\n')
                    f3.write(str(conv_fxpt(neg_consts[i])) + '\n')
                    f3.write(str(conv_fxpt(bias[i])) + '\n')

def load_feats(path='memory/features.npz', size=8):
    if os.path.isfile(path):
        print('Loading from previous features npz array.')
        npzfile = np.load('memory/features.npz')
        feats = npzfile['features']
    else:
        feats = np.random.rand(size)*2 - 1
        np.savez('memory/features.npz', features=feats)
    return feats

def create_feat_bram(feats):
    with open('memory/features.binarymem.txt', 'w') as f1:
        with open('memory/features.ascii.txt', 'w') as f2:
            with open('memory/features.fxpt.txt', 'w') as f3:
                for i, feat in enumerate(feats):
                    f1.write(bin_pad(conv_fxpt_bin(feat, 2, 6), 8) + '\n')
                    f2.write(str(feat) + '\n')
                    f3.write(str(conv_fxpt(feat, 2, 6)) + '\n')

def eval_layer(inp, main_weight, pos_const, neg_const, bias):
    fxpt_inp = conv_arr_fxpt(inp)
    fxpt_pos_const = conv_arr_fxpt(pos_const)
    fxpt_neg_const = conv_arr_fxpt(neg_const)
    fxpt_bias = conv_arr_fxpt(bias)
    pos_mweights = np.where(main_weights == -1, np.zeros(main_weights.shape), main_weights)
    neg_mweights = np.where(main_weights == 1, np.zeros(main_weights.shape), main_weights)
    pos_fxpt_prod = conv_arr_fxpt(pos_mweights.dot(fxpt_inp))
    neg_fxpt_prod = conv_arr_fxpt(neg_mweights.dot(fxpt_inp))
    scaled_neg_fxpt_prod = conv_arr_fxpt(fxpt_neg_const*neg_fxpt_prod)
    scaled_pos_fxpt_prod = conv_arr_fxpt(fxpt_pos_const*pos_fxpt_prod)
    print('negative sum, after scaling', scaled_neg_fxpt_prod)
    print('positive sum, after scaling', scaled_pos_fxpt_prod)
    fxpt_sum = conv_arr_fxpt(scaled_neg_fxpt_prod + scaled_pos_fxpt_prod + fxpt_bias)
    print('fxpt total sum', fxpt_sum)
    fxpt_out = np.maximum(np.zeros(fxpt_sum.shape), fxpt_sum)
    print('fxpt pos_relu', fxpt_out)
    weights = np.where(main_weights < 0, main_weights*neg_const, main_weights)
    weights = np.where(main_weights > 0, main_weights*pos_const, weights)
    prod = weights.dot(inp) + bias
    prod = np.maximum(np.zeros(prod.shape), prod)
    print('true answer', prod)
    print('diff:', np.abs(prod - fxpt_out))
    return fxpt_out

# run_fxpt_tests()
main_weights, pos_consts, neg_consts, bias = load_weights()
print('weights:', pos_consts, neg_consts, bias)
# create_weight_bram(main_weights, pos_consts, neg_consts, bias)
feats = load_feats(size=main_weights.shape[2])
# create_feat_bram(feats)

for i in range(1):
    feats = eval_layer(feats, main_weights[i], pos_consts[i], neg_consts[i], bias[i])
    # print(feats)

# print(main_weights, pos_consts, neg_consts, bias)
