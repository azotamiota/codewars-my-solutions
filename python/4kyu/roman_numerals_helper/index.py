class RomanNumerals:

    def to_roman(val): 
        nth_1000 = val // 1000  
        nth_100 = (val % 1000) // 100 
        nth_10 = (val % 100) // 10 
        nth_1 = val % 10 
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
        
        return result
    
    def from_roman(roman_num):
        result = 0
        roman_arab = {
            'I': 1, 'V': 5, 'X': 10, 'L': 50, 'C': 100, 'D': 500, 'M': 1000
        }
        for idx,digit in enumerate(roman_num):
            if idx < len(roman_num) - 1 and roman_arab[digit] < roman_arab[roman_num[idx + 1]]:
                result -= roman_arab[digit]
            else:
                result += roman_arab[digit]
                
        return result
