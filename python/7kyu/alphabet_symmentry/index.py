def solve(arr):
    abc = 'abcdefghijklmnopqrstuvwxyz'
    result = []
    for word in arr:
        counter = 0
        for idx, _ in enumerate(word):
            try:
                if word[idx].lower() == abc[idx]:
                    counter += 1
            except:
                pass
        result.append(counter)
    return result
