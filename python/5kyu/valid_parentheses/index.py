def valid_parentheses(string):
    parentheses_balance = 0
    for elem in string:
        if parentheses_balance < 0:
            return False
        if elem == '(':
            parentheses_balance += 1
        elif elem == ')':
            parentheses_balance -= 1
    return not parentheses_balance
