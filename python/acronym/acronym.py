import re


def abbreviate(words):
    split_words = re.sub(r"-|_", " ", words).split()
    return "".join(word[0].upper() for word in split_words)
