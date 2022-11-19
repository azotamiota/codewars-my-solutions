def row_weights(array):
    return (sum([x for idx,x in enumerate(array) if idx % 2 == 0]),
            sum([x for idx,x in enumerate(array) if idx % 2 == 1]))
