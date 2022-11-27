def next_smaller(n):
    if sorted(list(str(n))) == list(str(n)):
        return -1
    lowest_digit = 9
    breakpoint_num = 0
    for idx,digit in enumerate(str(n)[::-1]): # looping through digits from behind
        if int(digit) <= lowest_digit:
            lowest_digit = int(digit)
        else:
            tail = str(n)[-idx-1:] # if there's a digit that is bigger than the previous one: There is a smaller number solution
            breakpoint_num = tail[0]
            sorted_tail_digits = ''.join(sorted(list(tail), reverse=True))
            for i, digit in enumerate(sorted_tail_digits): # change tail digits to be the next smaller number with the same digits
                if digit < breakpoint_num:
                    desired_tail = digit + sorted_tail_digits[:i] + sorted_tail_digits[i + 1:] # concatenate the desired tail 
                    if (str(n)[:-idx-1] + desired_tail)[0] != '0': # if result number don't start with '0'
                        return int(str(n)[:-idx-1] + desired_tail)
            return -1
