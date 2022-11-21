def pig_it(text):
    result = ''
    for elem in text.split():
        result += elem[1:] + elem[0] + 'ay ' if elem.isalpha() else elem
    return result.strip()
