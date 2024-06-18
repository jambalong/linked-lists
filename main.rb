# frozen_string_literal: true

require_relative 'lib/linked_list'

linked_list = LinkedList.new

puts "linked_list: #{linked_list}"
puts ''
puts "#append('B'): #{linked_list.append('B')}"
puts "#prepend('A'): #{linked_list.prepend('A')}"
puts "#append('C'): #{linked_list.append('C')}"
puts "#append('D'): #{linked_list.append('D')}"
puts ''
puts "#to_s: #{linked_list}"
puts "#size: #{linked_list.size}"
puts ''
puts "#head: #{linked_list.head.value}"
puts "#tail: #{linked_list.tail.value}"
puts ''
puts "#at(0): #{linked_list.at(0).value}"
puts "#at(1): #{linked_list.at(1).value}"
puts "#at(2): #{linked_list.at(2).value}"
puts "#at(3): #{linked_list.at(3).value}"
puts ''
puts "#pop: #{linked_list.pop.value}"
puts "linked_list: #{linked_list}"
puts "#size: #{linked_list.size}"
puts ''
puts "#contains?('C'): #{linked_list.contains?('C')}"
puts "#find('B'): #{linked_list.find('B')}"
puts ''
puts "#insert_at('E', 1): #{linked_list.insert_at('E', 1)}"
puts "#remove_at(2): #{linked_list.remove_at(2)}"
