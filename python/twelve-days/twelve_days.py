gifts_array = [
    ("first", "a Partridge in a Pear Tree."),
    ("second", "two Turtle Doves"),
    ("third", "three French Hens"),
    ("fourth", "four Calling Birds"),
    ("fifth", "five Gold Rings"),
    ("sixth", "six Geese-a-Laying"),
    ("seventh", "seven Swans-a-Swimming"),
    ("eighth", "eight Maids-a-Milking"),
    ("ninth", "nine Ladies Dancing"),
    ("tenth", "ten Lords-a-Leaping"),
    ("eleventh", "eleven Pipers Piping"),
    ("twelfth", "twelve Drummers Drumming"),
]


def gifts(end_verse):
    if end_verse == 0:
        return f"and {gifts_array[end_verse][1]}"
    else:
        return f"{gifts_array[end_verse][1]}, {gifts(end_verse - 1)}"


def recite(start_verse, end_verse):
    returned_verse = []
    for index in range(start_verse - 1, end_verse):
        day = gifts_array[index][0]
        base_phrase = f"On the {day} day of Christmas my true love gave to me: "
        if index == 0:
            returned_verse.append(base_phrase + f"{gifts_array[index][1]}")
        else:
            returned_verse.append(base_phrase + f"{gifts(index)}")
    return returned_verse
