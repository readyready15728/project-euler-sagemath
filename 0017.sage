import inflect

e = inflect.engine()

counter = 0

for i in range(1, 1001):
    counter += sum(1 for c in e.number_to_words(i) if c.isalpha())

print(counter)
