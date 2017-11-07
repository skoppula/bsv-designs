import numpy as np

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
    if scaled_num < 0:
        pos_scaled_num = -1*scaled_num
        int_bin_str = bin(pos_scaled_num)[2:][-total_prec:]
        int_bin_str = bin_pad(int_bin_str, total_prec)
        inverse_bit_str = ''.join(['0' if c == '1' else '1' for c in int_bin_str])
        int_repr_twos_complement = int(inverse_bit_str, 2) + 1
        twos_comp_bin_str = bin(int_repr_twos_complement)[-total_prec:]
        return float(scaled_num)/(2**prec_dec), bin_pad(twos_comp_bin_str, total_prec)
    else:
        int_bin_str = bin(scaled_num)[2:][-total_prec:]
        return float(scaled_num)/(2**prec_dec), bin_pad(int_bin_str, total_prec)

def run_tests():
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
        print(num, conv_fxpt(num), truth)
        print()

rand_weights = np.random.randint(3, size=(8, 8)) - 1
tmp = -2*rand_weights
transcribed_weights = np.where(tmp == -2, np.ones(tmp.shape), tmp)

pos_consts = np.random.rand(rand_weights.shape[0])*2 - 1
neg_consts = np.random.rand(rand_weights.shape[0])*2 - 1
bias = np.random.rand(rand_weights.shape[0])*2 - 1

n_bits_weight_row = rand_weights.shape[1]*2
with open('memory/weights.binarymem.txt', 'w') as f1:
    with open('memory/weights.ascii.txt', 'w') as f2:
        with open('memory/weights.fxpt.txt', 'w') as f3:
            for i, row in enumerate(transcribed_weights):
                nums = ['{0:02b}'.format(int(num)) for num in list(row)]
                f1.write(''.join(nums) + '\n')
                f1.write(bin_pad(conv_fxpt(pos_consts[i])[1], n_bits_weight_row) + '\n')
                f1.write(bin_pad(conv_fxpt(neg_consts[i])[1], n_bits_weight_row) + '\n')
                f1.write(bin_pad(conv_fxpt(bias[i])[1], n_bits_weight_row) + '\n')

                nums = [str(num) if len(str(num)) == 2 else ' ' + str(num) for num in list(rand_weights[i])]
                f2.write(' '.join(nums) + '\n')
                f2.write(str(pos_consts[i]) + '\n')
                f2.write(str(neg_consts[i]) + '\n')
                f2.write(str(bias[i]) + '\n')

                f3.write(' '.join(nums) + '\n')
                f3.write(str(conv_fxpt(pos_consts[i])[0]) + '\n')
                f3.write(str(conv_fxpt(neg_consts[i])[0]) + '\n')
                f3.write(str(conv_fxpt(bias[i])[0]) + '\n')

feats = np.random.rand(rand_weights.shape[1])*2 - 1

with open('memory/features.binarymem.txt', 'w') as f1:
    with open('memory/features.ascii.txt', 'w') as f2:
        with open('memory/features.fxpt.txt', 'w') as f3:
            for i, feat in enumerate(feats):
                f1.write(bin_pad(conv_fxpt(feat, 2, 6)[1], 8) + '\n')
                f2.write(str(feat) + '\n')
                f3.write(str(conv_fxpt(feat, 2, 6)[0]) + '\n')
