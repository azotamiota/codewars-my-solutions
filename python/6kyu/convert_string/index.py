import re
def to_camel_case(text):
    if text == '':
        return ''
    arr = re.split('[-_]', text)
    if re.search('[A-Z]', text[0]):
        return ''.join([word.capitalize() for word in arr])
    else:
        return ''.join([word.capitalize() if idx > 0 else word for idx,word in enumerate(arr)])
