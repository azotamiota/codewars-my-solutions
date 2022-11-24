from itertools import permutations as ps
def permutations(s):
    perms = [''.join(p) for p in ps(s)]
    return set(perms)
