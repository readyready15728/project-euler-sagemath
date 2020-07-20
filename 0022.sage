with open('names.txt') as f:
    names = f.readlines()

names.sort()
total = 0

for i, name in enumerate(names):
    total += (i + 1) * sum(ord(c) - 96 for c in name.strip())

print(total)
