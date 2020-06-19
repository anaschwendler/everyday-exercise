def distance(strand_a, strand_b):
    if len(strand_a) != len(strand_b):
        raise ValueError("The size of the string don't match")
    return sum(1 for k, i in enumerate(strand_a) if i != strand_b[k])
