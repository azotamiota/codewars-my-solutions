def decode_bits(bits):
    print('bits: ', bits)
    dot_length = min([len(elem) for elem in bits.split('0') if len(elem) > 0])
#     print(dot_length * '111')
    # ToDo: Accept 0's and 1's, return dots, dashes and spaces
    morse = bits.replace(dot_length * '111', '-').replace(dot_length * '000', '   ').replace(dot_length * '1', '.').replace(dot_length * '0', ' ')
    print('morse: ', morse.replace('0', ''))
    return morse.replace('0', '')

def decode_morse(morseCode):
    print('morseCode: ', morseCode)
#     print(morseCode)
    # ToDo: Accept dots, dashes and spaces, return human-readable message
    sentence = morseCode.split('       ')
    print(sentence)
    result_arr = []
    for word in sentence:
        for letter in word.split('   '):
            result_arr.append(MORSE_CODE[letter.replace(' ','')])
        result_arr.append(' ')
    print(''.join(result_arr))
    return ''.join(result_arr).strip()
#     return morseCode.replace('- . - -', MORSE_CODE['-.--'])
#     return morseCode.replace('.', MORSE_CODE['.']).replace('-', MORSE_CODE['-']).replace(' ', '')
