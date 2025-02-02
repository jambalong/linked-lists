# Linked Lists

This project is part of The Odin Project: [Linked Lists](https://www.theodinproject.com/lessons/ruby-linked-lists)

## Overview

In this project, you will create a basic implementation of a linked list in Ruby, focusing on object-oriented programming principles. You will learn how to create and manipulate data structures using classes and methods.

## Assignment

You will need two classes:

1. `LinkedList` class, which will represent the full list.
2. `Node` class, containing a `#value` method and a link to the `#next_node`, set both as `nil` by default.

Build the following methods in your linked list class:

1. `#append(value)` adds a new node containing `value` to the end of the list
2. `#prepend(value)` adds a new node containing `value` to the start of the list
3. `#size` returns the total number of nodes in the list
4. `#head` returns the first node in the list
5. `#tail` returns the last node in the list
6. `#at(index)` returns the node at the given `index`
7. `#pop` removes the last element from the list
8. `#contains?(value)` returns true if the passed in value is in the list and otherwise returns false.
9. `#find(value)` returns the index of the node containing value, or nil if not found.
10. `#to_s` represent your LinkedList objects as strings, so you can print them out and preview them in the console. The format should be: `( value ) -> ( value ) -> ( value ) -> nil`

## Extra credit

1. `#insert_at(value, index)` that inserts a new node with the provided `value` at the given `index`.
2. `#remove_at(index)` that removes the node at the given `index`.

**Extra Credit Tip:** When you insert or remove a node, consider how it will affect the existing nodes. Some of the nodes will need their `#next_node` link updated.

## Installation Instructions

To run this project locally, follow these steps:

### Prerequisites

- Ensure you have [Ruby](https://www.ruby-lang.org/en/downloads/) installed on your machine.

### Steps to Install

1. **Clone the Repository:**

   Open your terminal and run the following command:

   ```bash
   git clone https://github.com/jambalong/linked-lists.git
   ```

2. **Navigate to the Project Directory**:
   ```bash
   cd linked-lists
   ```

3. **Run the Code**:

   `main.rb` contains tests for the `LinkedList` implementation, execute:
   ```bash
   ruby main.rb
   ```
   
This will run the linked list implementation and display the output in the terminal.
