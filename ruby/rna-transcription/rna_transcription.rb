# frozen_string_literal: true

# Write your code for the 'Rna Transcription' exercise in this file. Make the tests in
# `rna_transcription_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/rna-transcription` directory.

# LESSONS
# .tr(from_str, to_str) does:
# Returns a copy of str with the characters in from_str replaced by the
# corresponding characters in to_str. If to_str is shorter than from_str,
# it is padded with its last character in order to maintain the correspondence.

module Complement
  def self.of_dna(strand)
    strand.tr('GCTA', 'CGAU')
  end
end
