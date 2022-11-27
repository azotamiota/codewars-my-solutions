from itertools import permutations as ps

def next_smaller(n):
    print(n)
    if sorted(list(str(n))) == list(str(n)):
        return -1
    lowest_digit = 9
    for idx,digit in enumerate(str(n)[::-1]):
        print('digit: ', digit)
        if int(digit) <= lowest_digit:
            lowest_digit = int(digit)
            print('lowest_digit: ', lowest_digit)
        else:
            print('idx: ', idx)
            tail = str(n)[-idx-1:]
            print('tail: ', tail)
            perms = (''.join(p) for p in ps(str(tail))) #if int(''.join(p)) < n)
# print(sorted(perms, reverse=True))
            for chunk in sorted(perms, reverse=True):
                print('chunk: ', chunk)
                curr_num = int(str(n)[:-idx-1] + chunk)
                print('curr_num: ', curr_num)
                if curr_num < n and len(str(curr_num)) == len(str(n)):
                    return curr_num
    return -1

print(next_smaller(1234567908))

