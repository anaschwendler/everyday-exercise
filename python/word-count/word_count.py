from collections import Counter
import re
import string


def count_words(sentence):
    remove_punct = re.sub(r",|_", " ", sentence)
    split_sentence = remove_punct.lower().split()
    clean_sentence = [word.strip(string.punctuation) for word in split_sentence]
    return dict(Counter(clean_sentence))
