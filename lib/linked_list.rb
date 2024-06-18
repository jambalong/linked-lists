# frozen_string_literal: true

require_relative 'node'

# Represents the full list
class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(value, new_node = Node.new(value))
    head.nil? ? (self.head = new_node) : (tail.next_node = new_node)
    self
  end

  def prepend(value, new_node = Node.new(value, head))
    new_node.next_node = head if head
    self.head = new_node
    self
  end

  def size(node = head, size = 0)
    return size if node.nil?

    size += 1 and node = node.next_node while node
    size
  end

  def tail(node = head)
    return nil if node.nil?

    node = node.next_node while node.next_node
    node
  end

  def at(index, node = head)
    return nil if head.nil?
    raise IndexError, 'Index out of bounds' if index.negative? || index >= size

    node = node.next_node and index -= 1 while node && index.positive?
    node
  end

  def pop(node = head)
    return nil if head.nil?
    return self.head = nil unless node.next_node

    node = node.next_node while node&.next_node&.next_node
    node.next_node.tap { node.next_node = nil }
  end

  def contains?(value)
    find(value) ? true : false
  end

  def find(value, node = head, index = 0)
    return nil if head.nil?

    while node
      return index if node.value == value

      node = node.next_node
      index += 1
    end

    nil
  end

  def to_s(node = head, string = '')
    while node
      string += "#{node.value} -> "
      node = node.next_node
    end

    string + 'nil'
  end

  def insert_at(value, index, new_node = Node.new(value))
    return prepend(value) if index.zero?
    return append(value) if index == size
    return unless at(index)

    previous_node = at(index - 1)
    new_node.next_node = previous_node.next_node
    previous_node.next_node = new_node

    self
  end

  def remove_at(index)
    return unless at(index)

    if index.zero?
      self.head = at(1)
    else
      previous_node = at(index - 1)
      previous_node.next_node = at(index).next_node
    end

    self
  end
end
