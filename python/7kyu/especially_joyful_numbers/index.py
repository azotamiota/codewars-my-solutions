def number_joy(n):
    digits_sum = sum([int(digit) for digit in str(n)])
    reversed = [digit for digit in str(digits_sum)][::-1]
    
    return digits_sum * int(''.join(reversed)) == n if n % digits_sum == 0 else False
