def decompose(n):
    # [1, 4, 9, 16, 25, 36, 47, 64, 81, 100] 1-10
    # 11 = 121
    squared = [num ** 2 for num in range(1, n)] # 9 4 1
    result = [0]
    for i in subset_sum(squared, n ** 2, [], 0):
        # print(i)
        if i[-1] > result[-1]:
            result = i
    print('result: ', [int(num ** 0.5) for num in result])
    # return squared
    # start = int(n - 1) # 5

def subset_sum(numbers, target, partial=[], partial_sum=0):
    if partial_sum == target:
        yield partial
    if partial_sum >= target:
        return
    for i, n in enumerate(numbers):
        remaining = numbers[i + 1:]
        yield from subset_sum(remaining, target, partial + [n], partial_sum + n)

    # while start > 0: # 5 4 3 2 1
    #     if sum(squared) + start ** 2 == target:
    #         return [start] + list(reversed([int(num ** 0.5) for num in squared]))
    #     elif sum(squared) + start ** 2 < target: 
    #         squared.append(start ** 2)
    #         print('squared: ', squared)
    #     start -= 1
    # return None

print(decompose(50))
