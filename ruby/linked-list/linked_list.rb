# frozen_string_literal: true

# Write your code for the 'Linked List' exercise in this file. Make the tests in
# `linked_list_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/linked-list` directory.

class Node
  attr_accessor :value, :previous, :next

  def initialize(value, previous_node, next_node)
    @value = value
    @previous = previous_node
    @next = next_node
  end
end

class Deque
  def initialize
    @head = nil
    @tail = @head
  end

  def push(value)
    if @head.nil? # sets head first time
      @head = Node.new(value, @tail, nil)
    elsif @tail.nil? # sets tail first time
      @tail = Node.new(value, @head, nil)
      @head.next = @tail
      @tail.previous = @head # sets new head
    else # default: adds to tail
      @tail = Node.new(value, @tail, nil)
    end
  end

  def unshift(value)
    if @head.nil?
      @head = Node.new(value, nil, nil)
    elsif @tail.nil?
      @tail = @head # saves old head with nil tail
      @head = Node.new(value, nil, @tail)
      @tail.previous = @head # we need to set up the new head
    else # defaul: when head and tail are done, just push head
      @head = Node.new(value, nil, @head)
    end
  end

  # rubocop:disable Metrics/MethodLength
  def pop
    popped_value = 0
    if @head.next.nil? && @tail.nil? # removes the last value
      popped_value = @head.value
      @head = nil
    elsif @tail.previous.eql? @head # tail and head are the same node
      popped_value = @tail.value
      @tail = nil
      @head.next = nil
    else # default: just remove from tail
      popped_value = @tail.value
      @tail = @tail.previous
    end

    popped_value
  end
  # rubocop:enable Metrics/MethodLength

  # rubocop:disable Metrics/MethodLength
  def shift
    shifted_value = @head.value

    if @head.next.nil?
      @head = nil
    elsif @head.next.eql? @tail
      @head = @tail
      @head.previous = nil # head still had previous from tail
      @tail = nil
    else
      @head = @head.next
    end

    shifted_value
  end
  # rubocop:enable Metrics/MethodLength
end
