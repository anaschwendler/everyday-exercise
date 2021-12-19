import unittest

from spiral_matrix_order import SpiralOrder


class SpiralOrderTest(unittest.TestCase):
    def test_example_1(self):
        matrix = SpiralOrder([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
        self.assertEqual(matrix.spiral_order(), [1, 2, 3, 6, 9, 8, 7, 4, 5])

    def test_example_2(self):
        matrix = SpiralOrder([[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12]])
        self.assertEqual(matrix.spiral_order(), [1, 2, 3, 4, 8, 12, 11, 10, 9, 5, 6, 7])
