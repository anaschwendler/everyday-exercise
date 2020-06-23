def score(word):
    filter_alphachars = "".join([c for c in word if c.isalpha()]).lower()

    letter_values = {
        1: ['a', 'e', 'i', 'o', 'u', 'l', 'n', 'r', 's', 't'] ,
        2: ['d', 'g'],
        3: ['b', 'c', 'm', 'p'],
        4: ['f', 'h', 'v', 'w', 'y'],
        5: ['k'],
        8: ['j', 'x'],
        10: ['q', 'z']
    }

    word_sum = 0

    for c in filter_alphachars:
        word_sum += [i[0] for i in letter_values.items() if c in i[1]][0]

    return word_sum
