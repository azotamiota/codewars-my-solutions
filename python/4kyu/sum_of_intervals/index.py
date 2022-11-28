def sum_of_intervals(intervals):
    sorted_version = sorted(dict(intervals).items())
    sum = 0
    curr_min = sorted_version[0][0] 
    curr_max = sorted_version[0][1] 
    for i in range(1, len(sorted_version)): 
        if sorted_version[i][0] > curr_min and sorted_version[i][0] < curr_max:
            if sorted_version[i][1] > curr_max:
                curr_max = sorted_version[i][1] 
        else:
            sum += curr_max - curr_min
            curr_min = sorted_version[i][0]
            curr_max = sorted_version[i][1]
    sum += curr_max - curr_min
    return sum
