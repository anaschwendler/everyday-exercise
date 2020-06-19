class Matrix:
    def __init__(self, matrix_string):
        self.rows = self.__define_rows(matrix_string)
        self.columns = self.__define_columns(matrix_string)

    def row(self, index):
        return self.rows[index - 1]

    def column(self, index):
        return self.columns[index]

    def __define_rows(self, matrix_string):
        split_lines = matrix_string.splitlines()
        rows = []
        for i in split_lines:
            rows.append(list(map(int, i.split())))
        return rows

    def __define_columns(self, matrix_string):
        split_lines = matrix_string.splitlines()
        columns = {}
        for i in split_lines:
            split = i.split()
            k = 1
            for j in split:
                if k not in columns:
                    columns[k] = []
                columns[k].append(int(j))
                k += 1
        return columns
