class RomanNumerals:
    romans = {
        1: 'I', 5: 'V', 10: 'X', 50: 'L', 100: 'C', 500: 'D', 1000: 'M'
    }
    def to_roman(val): # 3467
        print('val: ', val)
        nth_1000 = val // 1000 # 3 
        nth_100 = (val % 1000) // 100 # 4
        nth_10 = (val % 100) // 10 # 6 
        nth_1 = val % 10 # 7
        result = ''
        result += nth_1000 * 'M'
        if nth_100 < 4:
            result += nth_100 * 'C'
        elif nth_100 == 4:
            result += 'CD'
        elif nth_100 == 5:
            result += 'D'
        elif nth_100 == 9:
            result += 'CM'
        else:
            result += f'D{(nth_100 - 5) * "C"}'
        if nth_10 < 4:
            result += nth_10 * 'X'
        elif nth_10 == 4:
            result += 'XL'
        elif nth_10 == 5:
            result += 'L'
        elif nth_10 == 9:
            result += 'XC'
        else:
            print('this kicks in')
            result += f'L{(nth_10 - 5) * "X"}'
        if nth_1 < 4:
            result += nth_1 * 'I'
        elif nth_1 == 4:
            result += 'IV'
        elif nth_1 == 5:
            result += 'V'
        elif nth_1 == 9:
            result += 'IX'
        else:
            result += f'V{(nth_1 - 5) * "I"}'
        
        print('results: ', nth_1000,nth_100, nth_10,nth_1)
        return result

    def from_roman(roman_num):
        return 0

print(RomanNumerals.to_roman(1987))
print(RomanNumerals.from_roman('MCMCX'))
