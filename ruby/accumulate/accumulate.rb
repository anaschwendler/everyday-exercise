# frozen_string_literal: true

# Write your code for the 'Accumulate' exercise in this file. Make the tests in
# `accumulate_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/accumulate` directory.

## Explanation on how this work
## &operation gets the yielded operation passed to the array
## self refers to the array itself, which we will call the operation yielded

class Array
  def accumulate(&operation)
    acc = []
    each { |i| acc.append(operation.call(i)) }
    acc
  end
end
