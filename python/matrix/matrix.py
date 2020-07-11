class Matrix:
    def __init__(self, matrix_string):
        self.rows = self.__define_rows(matrix_string)
        self.columns = self.__define_columns(matrix_string)

    def row(self, index):
        return self.rows[index - 1]

    def column(self, index):
        return self.columns[index - 1]

    def __define_rows(self, matrix_string):
        split_lines = matrix_string.splitlines()
        rows = []
        for i in split_lines:
            rows.append(list(map(int, i.split())))
        return rows

    def __define_columns(self, matrix_string):
        tuple_rows = [tuple(row) for row in self.rows]
        columns = list(zip(*tuple_rows))
        return [list(column) for column in columns]
