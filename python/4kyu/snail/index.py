def snail(snail_map):
    steps = len([num for chunk in snail_map for num in chunk ])
    top_and_left_idx = 0
    bottom_and_right_idx = len(snail_map) - 1
    vertical_steps = len(snail_map) - 2
    result = []
    
    while len(result) < steps:
        for i in range(top_and_left_idx, bottom_and_right_idx + 1):
            result.append(snail_map[top_and_left_idx][i])
        for i in range(vertical_steps):
            result.append(snail_map[top_and_left_idx + 1 + i][bottom_and_right_idx])
        for i in range(top_and_left_idx, bottom_and_right_idx + 1):
            result.append(snail_map[bottom_and_right_idx][::-1][i])
        for i in range(vertical_steps):
            result.append(snail_map[bottom_and_right_idx - 1 - i][top_and_left_idx])
            
        top_and_left_idx += 1
        bottom_and_right_idx -= 1
        vertical_steps -= 2
        
    return result if steps % 2 == 0 else result[:-1]
