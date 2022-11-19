def solution(number):
    multiples = []
    number -= 1
    while number > 2:
        if number % 3 == 0 or number % 5 == 0:
            multiples.append(number)
        number -= 1
    return sum(multiples)
