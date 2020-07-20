total = 0

for i in range(1, 10001):
    for j in range(1, i):
        if i != j and sum(divisors(i)[:-1]) == j and sum(divisors(j)[:-1]) == i:
            total += i + j

print(total)
