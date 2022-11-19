def count_bits(n):
    return sum([int(bit) for bit in format(n, 'b')])
