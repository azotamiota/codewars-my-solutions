def dbl_linear(n):
    u = [1]
    curr_index = 0
#     result = 0
    while curr_index < n:
        print('u: ', u)
#         try:
#             result = u[n]
#         except:
#             pass
        u.append(u[curr_index] * 2 + 1)
        u.append(u[curr_index] * 3 + 1)
        u = list(set(u))
        u.sort()
