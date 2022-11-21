def rgb(r, g, b):
    r,g,b = [255 if num > 255 else 0 if num < 0 else num for num in [r,g,b]]
    hex = '%02x%02x%02x' % (r,g,b)
    return hex.upper()
