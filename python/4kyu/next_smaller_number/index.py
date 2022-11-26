from itertools import permutations as ps

def next_smaller(n):

    perms = (''.join(p) for p in ps(str(n)) if int(''.join(p)) < n)
    print(max(perms))
    print(list(perms))

    # return set(perms(n))


next_smaller(4312)

# for i in next_smaller(231):
#     print(i)
