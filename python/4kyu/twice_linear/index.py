def dbl_linear(n):
    u = {1}
    used_x = set()
    next_x = 1
    while len(u) < n * 2:
        y = next_x * 2 + 1
        z = next_x * 3 + 1
        u.update({y, z})
        used_x.add(next_x)
        next_x = min(u.difference(used_x))
    result = list(u)
    result.sort()
    return result[n]
