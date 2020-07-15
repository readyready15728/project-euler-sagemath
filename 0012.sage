from itertools import dropwhile

def triangle_number_generator():
    current_number = 0
    last_addend = 0

    while True:
        current_number += last_addend + 1
        last_addend += 1
        yield current_number

print(next(dropwhile(lambda n: number_of_divisors(n) <= 500, triangle_number_generator())))
