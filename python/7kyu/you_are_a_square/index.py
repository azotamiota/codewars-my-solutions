def is_square(n):    
    return True if n == 0 else n ** 0.5 == round(n ** 0.5) if n > 0 else False
