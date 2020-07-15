def outer_loop():
    for c in range(1001):
        for b in range(c):
            a = 1000 - (b + c)

            if a^2 + b^2 == c^2:
                print(a * b * c)
                return

outer_loop()
