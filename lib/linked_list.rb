# frozen_string_literal: true

require_relative 'node'

# Represents the full list
class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(value)
    new_node = Node.new(value)

    if head.nil?
      self.head = new_node
    else
      node = head

      while node.next_node
        node = node.next_node
      end

      node.next_node = new_node
    end

    self
  end

  def prepend(value)
    new_node = Node.new(value, head)

    if head.nil?
      self.head = new_node
    else
      new_node.next_node = head
      self.head = new_node
    end

    self
  end

  def size
    node = head
    size = 0

    while node
      size += 1
      node = node.next_node
    end

    size
  end

  def tail
    return nil if head.nil?

    node = head

    while node.next_node
      node = node.next_node
    end

    node
  end

  def at(index)
    return nil if head.nil?
    raise IndexError, "Index out of bounds" if index < 0 || index >= self.size

    node = head

    while node && index > 0
      node = node.next_node
      index -= 1
    end

    node
  end

  def pop
    return nil if head.nil?

    node = head

    if node.next_node.nil?
      self.head = nil

      return node
    end

    while node.next_node && node.next_node.next_node
      node = node.next_node
    end

    pop = node.next_node
    node.next_node = nil

    pop
  end

  def contains?(value)
    return false if head.nil?

    node = head

    while node
      return true if node.value == value

      node = node.next_node
    end

    false
  end

  def find(value)
    return false if head.nil?

    node = head
    index = 0

    while node
      return index if node.value == value

      node = node.next_node
      index += 1
    end

    nil
  end

  def to_s
    node = head
    string = ''

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