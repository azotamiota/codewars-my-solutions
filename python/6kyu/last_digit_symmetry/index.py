def solve(a,b):
    primes = [11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
    counter = 0
    for i in range(a, b+1):
        if str(i)[-2:] == str(i * i)[-2:]:
            if int(str(i)[:2]) in primes and i > 1175 and int(str(i * i)[:2]) in primes:
                counter += 1
    return counter
