def is_isogram(string):
    filter_alphachars = "".join([i for i in string if i.isalpha()]).lower()
    return len(filter_alphachars) == len(set(filter_alphachars))
