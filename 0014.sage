from itertools import takewhile

def collatz_generator(n):
    if n % 1000 == 0:
        print(n)
    
    current_number = n
    yield current_number

    while True:
        if is_even(current_number):
            current_number /= 2
        else:
            current_number = 3 * current_number + 1

        yield current_number

collaztz_lengths = [(i, len(list(takewhile(lambda n: n != 1, collatz_generator(i))))) for i in range(1, 10^6)]
print(max(collaztz_lengths, key=lambda pair: pair[1]))
