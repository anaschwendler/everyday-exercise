plants_list = {"C": "Clover", "G": "Grass", "R": "Radishes", "V": "Violets"}

students_list = [
    "Alice",
    "Bob",
    "Charlie",
    "David",
    "Eve",
    "Fred",
    "Ginny",
    "Harriet",
    "Ileana",
    "Joseph",
    "Kincaid",
    "Larry",
]


class Garden:
    def __init__(self, diagram, students=students_list):
        self.students = self.__parse_students(students)
        self.students_plants = self.__parse_diagram(diagram)

    def plants(self, student):
        return self.students_plants[student]

    def __parse_diagram(self, diagram):
        diagram_split = diagram.split()
        diagram_zip = list(zip(diagram_split[0], diagram_split[1]))
        list_of_groups = list(zip(*(iter(diagram_zip),) * 2))
        students_plants = {}
        for index, group in enumerate(list_of_groups):
            unify_tuple = (
                group[0][0] + group[1][0] + group[0][1] + group[1][1]
            )  # refactor this part tomorrow
            students_plants[self.students[index]] = [
                plants_list[p] for p in unify_tuple
            ]
        return students_plants

    def __parse_students(self, students):
        return sorted(students)
