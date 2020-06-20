def is_isogram(string):
    filter_alphachars = ''.join([i for i in string if i.isalpha()])
    normalize_string = filter_alphachars.lower()
    characters = []
    for i in normalize_string:
        if i not in characters:
            characters.append(i)
        else:
            return False
    return True
