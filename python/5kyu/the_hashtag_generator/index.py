def generate_hashtag(s):
    result = '#' + ''.join([word.capitalize() for word in s.split(' ') if word])
    return False if len(result) > 140 or len(result) == 1 else result
