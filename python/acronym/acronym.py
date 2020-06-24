import re


def abbreviate(words):
    split_words = re.sub(r"-|_", " ", words).split()
    abbreviated_string = ''
    for word in split_words:
        abbreviated_string += word[0].upper()
    return abbreviated_string
