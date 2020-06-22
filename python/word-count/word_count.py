import re
import string


def count_words(sentence):
    remove_punct = re.sub(r",|_", " ", sentence)
    split_sentence = remove_punct.lower().split()
    clean_sentence = [word.strip(string.punctuation) for word in split_sentence]
    word_counter = {}
    for word in clean_sentence:
        if word not in word_counter:
            word_counter[word] = 1
        else:
            word_counter[word] += 1
    return word_counter
