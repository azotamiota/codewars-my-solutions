def find_outlier(integers):
    are_evens = 0
    for elem in integers[:3]: # check majority of numbers
        if elem % 2 == 0:
            are_evens += 1
        else:
            are_evens -= 1
    for elem in integers:
        if are_evens > 0: # if majority of numbers are even
            if elem % 2 == 1:
                return elem
        else:
            if elem % 2 == 0:
                return elem
