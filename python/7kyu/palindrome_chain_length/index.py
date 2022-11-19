def palindrome_chain_length(n):
    result = n
    steps = 0
    while str(result) != str(result)[::-1]:
        print(result)
        result += int(str(result)[::-1])
        steps += 1
    return steps
