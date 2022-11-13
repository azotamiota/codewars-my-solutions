import re
def disemvowel(string_):
    result = ''
    for ch in string_:
        if re.search('[aeuioAEUIO]', ch):
            continue
        result += ch
    return result
