def is_isogram(string):
    normalize_string = string.lower()
    characters = []
    for i in normalize_string:
        if i.isalpha():
            if i not in characters:
                characters.append(i)
            else:
                return False
    return True
