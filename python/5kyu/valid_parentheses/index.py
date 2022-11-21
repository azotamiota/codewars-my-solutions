def valid_parentheses(string):
    parenthesis_balance = 0
    for elem in string:
        if parenthesis_balance < 0:
            return False
        if elem == '(':
            parenthesis_balance += 1
        elif elem == ')':
            parenthesis_balance -= 1
    return not parenthesis_balance
