class Matrix:
    def __init__(self, matrix_string):
        self.rows = self.__define_rows(matrix_string)
        self.columns = self.__define_columns(matrix_string)
        pass

    def row(self, index):
        return self.rows[index]

    def column(self, index):
        return self.columns[index]


    def __define_rows(self, matrix_string):
        split_lines = matrix_string.splitlines()
        rows = {}
        j = 1
        for i in split_lines:
            rows[j] = list(map(int, i.split()))
            j += 1
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
