# frozen_string_literal: true

# Write your code for the 'Phone Number' exercise in this file. Make the tests in
# `phone_number_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/phone-number` directory.

module PhoneNumber
  def self.clean(phone)
    cleaned_phone = clean_format(phone)
    checksum(cleaned_phone)
  end

  def self.clean_format(phone)
    phone.delete('^0-9')
  end

  def self.checksum(phone)
    phone_validation(phone) if phone_length(phone).between?(10, 11)
  end

  def self.phone_validation(phone)
    valid_phone = phone
    if phone_length(phone) == 11
      return nil unless country_digit?(phone)

      valid_phone = phone[1..]
    end

    check_valid_phone(valid_phone) ? valid_phone : nil
  end

  def self.phone_length(phone)
    phone.length
  end

  def self.country_digit?(phone)
    phone[0] == '1'
  end

  def self.check_valid_phone(phone)
    (area_digit?(phone) && exchange_digit?(phone))
  end

  def self.area_digit?(phone)
    phone[0].to_i.between?(2, 9)
  end

  def self.exchange_digit?(phone)
    phone[3].to_i.between?(2, 9)
  end
end
