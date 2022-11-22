def next_bigger(n):
    max = int(''.join(sorted(list(str(n)), reverse=True)))
    if n == max:
        return -1
    for i in range(n + 1, max + 1):
        if int(''.join(sorted(list(str(i)), reverse=True))) == max:
            return i
