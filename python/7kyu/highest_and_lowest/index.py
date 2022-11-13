def high_and_low(numbers):
    arr = [int(x) for x in numbers.split(' ')]
    return f'{max(arr)} {min(arr)}'
