def remove_duplicate_words(s):
    result_arr = []
    for word in s.split(' '):
        if word not in result_arr:
            result_arr.append(word)
    return ' '.join(result_arr)
