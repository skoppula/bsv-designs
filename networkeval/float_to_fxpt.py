import numpy as np

rand_weights = np.random.randint(3, size=(8, 8)) - 1
tmp = -2*rand_weights
transcribed_weights = np.where(tmp == -2, np.ones(tmp.shape), tmp)
with open('weights.binarymem.txt', 'w') as f1:
    with open('weights.ascii.txt', 'w') as f2:
        for i, row in enumerate(transcribed_weights):
            nums = ['{0:02b}'.format(int(num)) for num in list(row)]
            f1.write(''.join(nums) + '\n')
            nums = [str(num) if len(str(num)) == 2 else ' ' + str(num) for num in list(rand_weights[i])]
            f2.write(' '.join(nums) + '\n')
