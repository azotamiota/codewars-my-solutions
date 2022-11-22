import itertools

def get_pins(observed):
    possible_digits = {
        '1':['1','2','4'],
        '2':['1','2','3', '5'],
        '3':['2','3','6'],
        '4':['1','4','5','7'],
        '5':['2','4','5','6','8'],
        '6':['3','5','6','9'],
        '7':['4','7','8'],
        '8':['5','7','8','9','0'],
        '9':['6','8','9'],
        '0':['0','8']
    }
    actual_possible_digits = [possible_digits[collection] for collection in observed] 
    return [''.join(elem) for elem in list(itertools.product(*actual_possible_digits))]

