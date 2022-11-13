def accum(s):
    result = ''
    for idx, char in enumerate(s):
        result += char.upper() + char.lower() * idx + '-'
    return result[:-1]
