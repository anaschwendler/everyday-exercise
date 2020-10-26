# frozen_string_literal: false

# Write your code for the 'Affine Cipher' exercise in this file. Make the tests in
# `affine_cipher_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/affine-cipher` directory.

ROMAN_ALPHABET_LENGTH = ('a'..'z').count
LETTER_INDEX = ('a'..'z').to_a

class Affine
  attr_reader :key_a, :key_b

  def initialize(key_a, key_b)
    raise ArgumentError, 'Error: a and m must be coprime.' unless key_a.gcd(ROMAN_ALPHABET_LENGTH) == 1

    @key_a = key_a
    @key_b = key_b
  end

  def encode(word)
    encoded_word = ''
    sanitized_word = sanitize_word(word)

    sanitized_word.each_char do |c|
      encoded_word.concat(encode_concat_char(c))
    end

    group_chiphertext(encoded_word)
  end

  def decode(word)
    decoded_word = ''
    sanitized_word = sanitize_word(word)

    sanitized_word.each_char do |c|
      decoded_word.concat(decode_concat_char(c))
    end

    decoded_word
  end

  def encode_concat_char(letter)
    numeric?(letter) ? letter : encode_letter(letter)
  end

  def encode_letter(letter)
    encripted_value = letter_encription(letter)
    LETTER_INDEX[encripted_value]
  end

  def decode_concat_char(letter)
    numeric?(letter) ? letter : decode_letter(letter)
  end

  def decode_letter(letter)
    decripted_value = letter_decription(letter)
    LETTER_INDEX[decripted_value]
  end

  def sanitize_word(word)
    word.downcase.gsub(/[^a-z0-9']/, '')
  end

  def letter_encription(character)
    ((key_a * LETTER_INDEX.index(character)) + key_b) % ROMAN_ALPHABET_LENGTH
  end

  def letter_decription(character)
    (mmi * (LETTER_INDEX.index(character) - key_b)).round % ROMAN_ALPHABET_LENGTH
  end

  def mmi
    (0...ROMAN_ALPHABET_LENGTH).find { |n| ((key_a * n) % ROMAN_ALPHABET_LENGTH) == 1 }
  end

  def group_chiphertext(encripted_word)
    encripted_word.chars.each_slice(5).map(&:join).join(' ')
  end

  def numeric?(letter)
    letter =~ /[0-9]/
  end
end
