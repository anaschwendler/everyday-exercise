# frozen_string_literal: true

class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  # Setting the operations to symbols we can use `.send` to use it as operator.
  OPERATIONS = {
    '+' => :+,
    '/' => :/,
    '*' => :*
  }.freeze

  class UnsupportedOperation < StandardError; end

  def self.calculate(first_operand, second_operand, operation)
    handle_errors(first_operand, second_operand, operation)

    begin
      "#{first_operand} #{operation} #{second_operand} = #{first_operand.send(operation, second_operand)}"
    rescue ZeroDivisionError
      'Division by zero is not allowed.'
    end
  end

  def self.handle_errors(first_operand, second_operand, operation)
    raise UnsupportedOperation, "#{operation} is not supported" unless
      ALLOWED_OPERATIONS.include?(operation)
    raise ArgumentError, 'First operand is not a number' unless
      first_operand.is_a?(Numeric)
    raise ArgumentError, 'Second operand is not a number' unless
      second_operand.is_a?(Numeric)
  end
end
