from itertools import permutations as ps

def next_smaller(n):

    for i in range(2, len(str(n)) + 1):
        tail = str(n)[-i:]
        print('tail: ', tail)
        perms = (''.join(p) for p in ps(str(tail))) #if int(''.join(p)) < n)
        # print(sorted(perms, reverse=True))
        for chunk in sorted(perms, reverse=True):
            print('chunk: ', chunk)
            curr_num = int(str(n)[:-i] + chunk)
            print('curr_num: ', curr_num)
            if curr_num < n and len(str(curr_num)) == len(str(n)):
                return curr_num
    return -1

print(next_smaller(1234567908))

