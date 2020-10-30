# frozen_string_literal: false

# Write your code for the 'Affine Cipher' exercise in this file. Make the tests in
# `affine_cipher_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/affine-cipher` directory.

ROMAN_ALPHABET_LENGTH = ('a'..'z').count
LETTER_INDEX = ('a'..'z').to_a
NO_COPRIME = 'Error: a and m must be coprime.'.freeze

class Affine
  attr_reader :key_a, :key_b, :encripted_alphabet

  def initialize(key_a, key_b)
    raise ArgumentError, NO_COPRIME unless coprime?(key_a)

    @key_a = key_a
    @key_b = key_b
    @encripted_alphabet = define_encripted_alphabet
  end

  def encode(word)
    encoded_word = ''
    sanitized_word = sanitize_word(word)

    sanitized_word.each_char do |c|
      letter = numeric?(c) ? c : encripted_alphabet[c]
      encoded_word.concat(letter)
    end

    group_chiphertext(encoded_word)
  end

  def decode(word)
    decoded_word = ''
    sanitized_word = sanitize_word(word)

    sanitized_word.each_char do |c|
      letter = numeric?(c) ? c : encripted_alphabet.key(c)
      decoded_word.concat(letter)
    end

    decoded_word
  end

  def define_encripted_alphabet
    dictionary = {}

    ('a'..'z').each do |char|
      encripted_value = letter_encription(char)
      dictionary[char] = LETTER_INDEX[encripted_value]
    end

    dictionary
  end

  def coprime?(key_a)
    key_a.gcd(ROMAN_ALPHABET_LENGTH) == 1
  end

  def sanitize_word(word)
    word.downcase.gsub(/[^a-z0-9']/, '')
  end

  def letter_encription(character)
    ((key_a * LETTER_INDEX.index(character)) + key_b) % ROMAN_ALPHABET_LENGTH
  end

  def group_chiphertext(encripted_word)
    encripted_word.chars.each_slice(5).map(&:join).join(' ')
  end

  def numeric?(letter)
    letter =~ /[0-9]/
  end
end
