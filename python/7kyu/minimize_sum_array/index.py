def min_sum(arr):
    arr.sort()
    return sum([arr[i] * arr[-1 - i] for i in range(len(arr) // 2)])
