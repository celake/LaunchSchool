
=begin
Write a simple linked list implementation. The linked list is a fundamental data structure in computer science, often used in the implementation of other data structures.

The simplest kind of linked list is a singly linked list. Each element in the list contains data and a "next" field pointing to the next element in the list of elements. This variant of linked lists is often used to represent sequences or push-down stacks (also called a LIFO stack; Last In, First Out).

Let's create a singly linked list whose elements may contain a range of data such as the numbers 1-10. Provide methods to reverse the linked list and convert a linked list to and from an array.

We'll be making a singly linked list. This means that each element in the list does not need to have information about any other element in the list except for the next element.
Each element in the list contains data (a value) and a next field that points to the next element in the list of elements.
The elements of our linked list may contain any data values.
We'll need a method that reverses a linked list, as well as methods that convert a linked list to and from an array.
We may need to also write several helper methods.

Element: takes one or two arguments 
- first argument is data, second argument is next element. 
+ datum - object
+ tail? - is next nil? then true
next what is next element 

Next: 


SimpleLinkedList
+ size
+ empty?
+ peek
+ datum
+ tail?
+ head
+ next
pop
to_a
reverse
from_a


=end

class Element
  attr_reader :datum, :next

  @@items = []

  def initialize(datum, next_item=nil)
    @datum = datum
    @next = next_item
  end

  def tail?
    @next == nil
  end

  def set_next(value)
    @next = nil
  end
end

class SimpleLinkedList 
  attr_reader :head  

  def size
    size = 0
    current_element = @head
    while current_element
      size += 1
      current_element = current_element.next
    end
    size
  end

  def empty?
    @head == nil
  end

  def push(value)
    elem = Element.new(value, @head)
    @head = elem
  end

  def peek
    @head.datum if @head
  end

  def pop
    current_element = @head
    while current_element
      if current_element.next.next.tail?
        current_element.set_next(nil)
      end
      current_element = current_element.next
    end
  end

  def self.from_a(array)
    list = SimpleLinkedList.new
    if !array.nil?
      array.reverse!
      array.each do |element|
        list.push(element)
      end
    end
    list
  end

  def to_a
    array = []
    current_element = @head
    while current_element
      array << current_element.datum
      current_element = current_element.next
    end
    array
  end

  def reverse 
    current_element = @head
    list = SimpleLinkedList.new
    while current_element
      list.push(current_element.datum)
      current_element = current_element.next
    end
    list
  end
end


