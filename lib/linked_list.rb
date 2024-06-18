# frozen_string_literal: true

require_relative 'node'

# Represents the full list
class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(value, new_node = Node.new(value), node = head)
    head.nil? ? (self.head = new_node) : (tail.next_node = new_node)
    self
  end

  def prepend(value, new_node = Node.new(value, head))
    if head.nil?
      self.head = new_node
    else
      new_node.next_node = head
      self.head = new_node
    end

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
    raise IndexError, "Index out of bounds" if index < 0 || index >= self.size

    node = node.next_node and index -= 1 while node && index > 0
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

    string + "nil"
  end

  def insert_at(value, index)
    return unless at(index)
    return prepend(value) if index.zero?

    new_node = Node.new(value)

    previous_node = at(index - 1)
    new_node.next_node = previous_node.next_node
    previous_node.next_node = new_node

    self
  end

  def remove_at(index)
    return unless at(index)

    self.head = at(1) if index.zero?

    previous_node = at(index - 1)
    previous_node.next_node = at(index).next_node

    self
  end

  # def traverse(node = head)
  #   while node
  #     node = node.next_node
  #   end
  # end
end
