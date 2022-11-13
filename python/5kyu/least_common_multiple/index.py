def gcd_recursive(num1, num2):
    if num2 == 0:
        return num1
    else:
        return gcd_recursive(num2, num1 % num2)

def lcm_two_numbers(a, b):
    return (a * b) // gcd_recursive(a, b)

def lcm(*args):
    numbers_list = [*args]
    if len(numbers_list) == 0:
        return 1
    if len(numbers_list) == 1:
        return numbers_list[0]
    lcm = lcm_two_numbers(numbers_list[0], numbers_list[1])
    if len(numbers_list) == 2:
        return lcm
    if 0 in numbers_list:
        return 0
    for i in range(2, len(numbers_list)):
        lcm = lcm_two_numbers(lcm, numbers_list[i])
    return lcm
