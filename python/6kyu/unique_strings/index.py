import math

def uniq_count(s):
    occurs = {}
    for letter in s:
        occurs[letter.lower()] = 1 if letter.lower() not in occurs else occurs[letter.lower()] + 1
    divisor = 1
    for number in occurs.values():
        divisor *= math.factorial(number)
    return math.factorial(len(s)) // divisor
