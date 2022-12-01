def decode_bits(bits):
    bits = bits.strip('0') # delete head/tail zeroes
    zeroes_length = min([len(elem) if len(elem) > 0 else float('inf') for elem in bits.split('0')])
    ones_length = min([len(elem) if len(elem) > 0 else float('inf') for elem in bits.split('1')])
    one_dot_length = zeroes_length if zeroes_length < ones_length else ones_length # This is the "time unit" length
    morse = bits.replace(one_dot_length * '111', '-').replace(one_dot_length * '000', '   ').replace(one_dot_length * '1', '.').replace(one_dot_length * '0', ' ')
    return morse

def decode_morse(morseCode):
    sentence = morseCode.split('       ')
    result_arr = []
    for word in sentence:
        for letter in word.split('   '):
            result_arr.append(MORSE_CODE[letter.replace(' ','')])
        result_arr.append(' ')
    return ''.join(result_arr)[:-1] # delete last space
