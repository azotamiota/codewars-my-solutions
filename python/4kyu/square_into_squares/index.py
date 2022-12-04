def decompose(n):
    # [1, 4, 9, 16, 25, 36, 47, 64, 81, 100] 1-10
    # 11 = 121
    target = n * n
    result = []
    squared = [num * num for num in list(range(1, n))]
    squared.reverse()
    while len(squared) > 1:
        for i in range(len(squared)-1):
            if squared[i] + sum(result) == target:
                result.append(squared[i])
                return list(reversed([int(num ** 0.5) for num in result]))
                return result

            elif squared[i] + sum(result) < target:
                result.append(squared[i])
            print('result: ', result)
        squared = squared[1:]
        result = []
        print('squared: ', squared)
    # return result


print(decompose(8))
