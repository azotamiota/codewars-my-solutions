def gcd_recursive(num1, num2):
    if num2 == 0:
        return num1
    else:
        return gcd_recursive(num2, num1 % num2)

def lcm(x, y):
    return (x * y) // gcd_recursive(x, y)

