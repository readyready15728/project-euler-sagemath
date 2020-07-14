from collections import defaultdict

all_factors = [pair for i in range(1, 21) for pair in list(factor(i))]
all_factors.sort(reverse=True, key=lambda pair: pair[1])

already_considered = defaultdict(lambda: False)
product = 1

# The product is calculated as a product of the prime factors with the highest
# exponent. The reverse sort above and inclusion in already_considered below
# ensure that this is done.
for factor, count in all_factors:
    if not already_considered[factor]:
        product *= factor ** count
        already_considered[factor] = True

print(product)
