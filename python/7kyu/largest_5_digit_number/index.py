def solution(digits):
    greatest = 0
    for idx in range(len(digits)-4):
        if int(digits[idx:idx+5]) > greatest:
            greatest = int(digits[idx:idx+5])
    return greatest
