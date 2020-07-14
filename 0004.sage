palindromic_products = []

for i in range(100, 1000):
    print(f"i = {i}")

    for j in range(100, 1000):
        product_as_word = Word(str(i * j))

        if product_as_word.is_palindrome():
            palindromic_products.append(i * j)

print(max(palindromic_products))
