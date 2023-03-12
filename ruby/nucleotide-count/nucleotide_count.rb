# frozen_string_literal: true

# Write your code for the 'Nucleotide Count' exercise in this file. Make the tests in
# `nucleotide_count_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/nucleotide-count` directory.

module Nucleotide
  attr_reader :dna_string

  ALLOWED_NUCLEOTIDES = %w[A C G T].freeze

  def self.from_dna(dna_string)
    raise ArgumentError if invalid_string?(dna_string)

    @dna_string = dna_string
  end

  def count(nucleotide)
    dna_string.count { |i| i == nucleotide }
  end

  def histogram
    response = {}
    ALLOWED_NUCLEOTIDES.each do |n|
      response[n] = count(n)
    end
    response
  end

  def self.invalid_string?(dna_string)
    detect_array = []
    dna_string.each_char do |c|
      detect_array.append(c) unless ALLOWED_NUCLEOTIDES.include? c
    end

    detect_array.any?
  end
end

class String
  include Nucleotide
end
