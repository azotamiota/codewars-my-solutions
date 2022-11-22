import numpy as np
def valid_solution(board):
    desired = [1,2,3,4,5,6,7,8,9]
    for row in board:
        if sorted(row) != desired:
            return False
    arr_form = np.array(board)
    rotated = np.rot90(arr_form)
    for row in rotated:
        if sorted(row) != desired:
            return False
    boxes = [
        [board[0][:3], board[1][:3], board[2][:3]],
        [board[0][3:6], board[1][3:6], board[2][3:6]],
        [board[0][6:9], board[1][6:9], board[2][6:9]],
        
        [board[3][:3], board[4][:3], board[5][:3]],
        [board[3][3:6], board[4][3:6], board[5][3:6]],
        [board[3][6:9], board[4][6:9], board[5][6:9]],
        
        [board[6][:3], board[7][:3], board[8][:3]],
        [board[6][3:6], board[7][3:6], board[8][3:6]],
        [board[6][6:9], board[7][6:9], board[8][6:9]],
    ]
    for row in boxes:
        if sorted([num for chunk in row for num in chunk]) != desired:
            return False
    return True
