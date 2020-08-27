# frozen_string_literal: true

# Write your code for the 'Rna Transcription' exercise in this file. Make the tests in
# `rna_transcription_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/rna-transcription` directory.

TRANSCRIPTION = {
  'G' => 'C',
  'C' => 'G',
  'T' => 'A',
  'A' => 'U'
}.freeze

module Complement
  def self.of_dna(strand)
    rna_strand = ''

    strand.chars.each do |c|
      rna_strand += TRANSCRIPTION[c]
    end

    rna_strand
  end
end
