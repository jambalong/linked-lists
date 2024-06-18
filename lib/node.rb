# frozen_string_literal: true

# Represents a node in a linked list
class Node
  attr_accessor :value, :next_node
  
  def initialize(value = nil, next_node = nil)
    @value = value
    @next = next_node
  end
end
