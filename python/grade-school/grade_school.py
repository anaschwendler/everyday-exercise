class School:
    def __init__(self):
        self.student_roster = {}

    def add_student(self, name, grade):
        if grade not in self.student_roster:
            self.student_roster[grade] = [name]
        else:
            self.student_roster[grade].append(name)
        return "OK."

    def roster(self):
        roster = []
        for key in sorted(self.student_roster):
            roster = roster + sorted(self.student_roster[key])
        return roster

    def grade(self, grade_number):
        student_list = []
        if grade_number in self.student_roster:
            student_list = sorted(self.student_roster[grade_number])
        return student_list
