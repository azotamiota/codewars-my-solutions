def solution(args):
    # create "solution" list to store items temporarily. 
    # temp_arr holds adjacent numbers
    # when the "incrementing streak" is over
    # "temp_arr" list added to solution list as nested list
    
    solution = []
    temp_arr = []
        
    for i in range(len(args)):
        if i == len(args) - 1: # check last item individually to avoid IndexError
            if len(temp_arr) == 0:
                solution.append(args[i])
            else:
                temp_arr.append(args[i])
                solution.append(temp_arr)
        elif args[i] + 1 == args[i + 1]:
            temp_arr.append(args[i])
        elif len(temp_arr) == 0:
            solution.append(args[i])
        elif args[i] - 1 == temp_arr[-1]:
            temp_arr.append(args[i])
            solution.append(temp_arr)
            temp_arr = []
        else:
            solution.append(args[i])
            
    # "solution" list looks like this upon completion:
    # [-6, [-3, -2, -1, 0, 1], [3, 4, 5], [7, 8, 9, 10, 11], [14, 15], [17, 18, 19, 20]]
    
    result = []
    for elem in solution: # convert "solution" list to desired format
        if type(elem) == list:
            if len(elem) == 2:
                result.append(f'{elem[0]},{elem[1]}')
            else:
                result.append(f'{elem[0]}-{elem[-1]}')
        else:
            result.append(str(elem))
    return ','.join(result)
