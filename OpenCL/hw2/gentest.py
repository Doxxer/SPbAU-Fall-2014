N = 512
with open('input2.txt', 'w') as f:
    f.write('%s\n' % N)
    f.write(" ".join(['1' for x in xrange(0, N)]))