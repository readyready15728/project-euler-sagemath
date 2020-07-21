from itertools import takewhile

def quadratic_generator(a, b):
    x = 0

    while True:
        yield x^2 + a*x + b
        x += 1

max_primes_count = 0
max_coordinates = None

for a in range(-999, 1000):
    for b in range(-1000, 1000):
        primes_count = len(list(takewhile(lambda x: x in Primes(), quadratic_generator(a, b))))

        if primes_count > max_primes_count:
            max_primes_count = primes_count
            max_coordinates = (a, b)

print(max_coordinates[0] * max_coordinates[1])
