def create_phone_number(n):
    str_arr = [str(num) for num in n]
    return f"({''.join(str_arr[:3])}) {''.join(str_arr[3:6])}-{''.join(str_arr[6:])}"
