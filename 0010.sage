from itertools import takewhile

def prime_generator():
    current_number = 1

    while True:
        current_number = next_prime(current_number)
        yield current_number

print(sum(takewhile(lambda n: n < 2 * 10^6, prime_generator())))
