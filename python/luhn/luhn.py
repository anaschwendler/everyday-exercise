class Luhn:
    def __init__(self, card_num):
        self.card_number = card_num

    def valid(self):
        if not self.__is_card_number_valid():
            return False
        clean_card_number = self.__clean_card_number(self.card_number)
        doubled_card_numbers = self.__double_second_digit(clean_card_number)
        summed_card_numbers = self.__sum_card_values(doubled_card_numbers)
        return summed_card_numbers % 10 == 0

    def __double_second_digit(self, card_num):
        card_number_list = list(card_num[::-1])
        card_number_int_list = [int(i) for i in card_number_list]
        doubled = [self.__double_digit(i) for i in card_number_int_list[1::2]]
        return card_number_int_list[::2] + doubled

    def __double_digit(self, digit):
        doubled_value = digit * 2
        return doubled_value if doubled_value < 9 else doubled_value - 9

    def __sum_card_values(self, doubled_card_numbers):
        return sum(doubled_card_numbers)

    def __clean_card_number(self, card_number):
        return card_number.replace(" ", "")

    def __is_card_number_valid(self):
        remove_spaces = self.card_number.replace(" ", "")
        if len(remove_spaces) == 1:
            return False
        return remove_spaces.isdigit()
