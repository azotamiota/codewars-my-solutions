def snail(snail_map):
    steps = len([num for chunk in snail_map for num in chunk ])
#     idx = end - 1
    line_idx_right = 0
    line_idx_left = len(snail_map) - 1
    line_idx_down = len(snail_map) - 1
    line_idx_up = 0
    start = 0
    end = len(snail_map)
    vert_steps = len(snail_map) - 2
#     numbers_to_add = len(snail_map)
    result = []
    while len(result) < steps:
        for i in range(start, end):
            result.append(snail_map[line_idx_right][i])
        print(result)
        for i in range(vert_steps):
            result.append(snail_map[start + i + 1][line_idx_down])
        print(result)
        for i in range(end):
            result.append(snail_map[line_idx_left][::-1][i])
        print(result)
        
        for i in range(vert_steps):
            result.append(snail_map[end - 2 - i][line_idx_up])
        print(result)
        line_idx_right += 1
        start += 1
        end -= 1
        line_idx_down -= 1
        line_idx_up += 1
        vert_steps -= 1
    # print(result)

snail([[1,2,3,4],
       [5,6,7,8],
       [9,10,11,12],
       [13,14,15,16]])
