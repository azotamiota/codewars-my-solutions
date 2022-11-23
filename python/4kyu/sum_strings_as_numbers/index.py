def sum_strings(x,y):
    x,y = ['0' if x == '' else x, '0' if y == '' else y] # fix if either value is an empty string
    smaller, bigger = [x if len(x) < len(y) else y, y if len(x) < len(y) else x]
    if len(bigger) < 1000:
        return str(int(x)+int(y)) # ordinary solution if numbers are not too big
    result = []
    remainder = 0
    for i in range(-1, -len(smaller) - 1, -1): # addition digit by digit from the tail
        if int(smaller[i]) + int(bigger[i]) + remainder < 10:
            result.append(int(smaller[i]) + int(bigger[i]) + remainder)
            remainder = 0
        else:
            result.append((int(smaller[i]) + int(bigger[i]) + remainder) % 10) # add reminder if result > 10
            remainder = 1
    
    # for loop ends after the number of digits of the smaller number

    add_chunk = [str(x) for x in list(reversed(result))] # digits of the result up to the amount of smaller number's digit's amount
    if remainder == 0:
        return bigger[:-len(add_chunk)] + ''.join(add_chunk) # bigger number starting digits + result digits as string
    return str(int(bigger[:-len(add_chunk)]) + 1) + ''.join(add_chunk) # increment starting digits by one if there was a remainder
