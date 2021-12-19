# the idea here was to have:
# a counter to visit all numbers
# a direction to coordinate what to increment/decrement
# a lap counter to go inside a matrix


class SpiralOrder:
    def __init__(self, matrix):
        self.mat = matrix

    def spiral_order(self):
        r = 0  # control row
        c = 0  # control column
        i = len(self.mat)  # size of rows
        j = len(self.mat[0])  # size of column

        counter = 0
        direction = 1  # 1: right, 2: up, 3: down, 4: up
        lap = 0

        result = []

        while counter < i * j:
            result.append(self.mat[r][c])

            if direction == 1:  # going right
                if c == j - 1 - lap:
                    r += 1
                    direction = 2  # down
                else:
                    c += 1
            elif direction == 2:  # going down
                if r == i - 1 - lap:
                    c -= 1
                    direction = 3  # left
                else:
                    r += 1
            elif direction == 3:  # going left
                if c == 0 + lap:
                    r -= 1
                    direction = 4  # up
                    lap += 1
                else:
                    c -= 1
            else:  # going up
                if r == 0 + lap:
                    c += 1
                    direction = 1  # back to right
                else:
                    r -= 1

            counter += 1

        return result
