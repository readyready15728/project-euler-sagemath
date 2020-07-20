abundant_numbers = []

for i in range(1, 28124):
    if sum(divisors(i)[:-1]) > i:
        abundant_numbers.append(i)

# This discards any numbers above 28123 as they are unneeded
sums_of_two_abundant_numbers = {i + j for i in abundant_numbers for j in abundant_numbers if i + j <= 28123}

print(sum(set(range(1, 28124)) - sums_of_two_abundant_numbers))
