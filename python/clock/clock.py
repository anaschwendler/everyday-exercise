"""
A lesson about classes (that I didn't know)
(also why it took me almost a day to figure out what to do, but does look nice tho):
__repr__(): returns the object representation, that is how the tests are made.
__eq__(): "rich comparision" method, for equality,
    there is also a way for each other way to compare, like greater than (__gt__: x>y)
__add__(): way to control how we use the add operator
    (yes, the + itself) in this class.
__sub__(): like __add__(),
    is a way to controle how we use the subtractor operator (the - itself)


More on magic methods: https://www.python-course.eu/python3_magic_methods.php
"""


class Clock:
    def __init__(self, hour, minute):
        # // = divide with integral result
        # % = gets module
        self.hour = (hour + minute // 60) % 24
        self.minute = minute % 60

    def __repr__(self):
        # :02 formats the hour to two characters
        return f"{self.hour:02}:{self.minute:02}"

    def __eq__(self, other):
        return self.minute == other.minute and self.hour == other.hour

    def __add__(self, minutes):
        return Clock(self.hour, self.minute + minutes)

    def __sub__(self, minutes):
        return Clock(self.hour, self.minute - minutes)
