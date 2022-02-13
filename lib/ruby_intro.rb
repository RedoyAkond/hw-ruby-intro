# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  if arr==0
    0
  else
    arr.sum
  end
end
arr = [1,2,3,4 ]
sum(arr)

def max_2_sum(arr)
  # YOUR CODE HERE
  length = arr.length
  if length == 0
    0
  elsif length == 1
    arr.first
  else
    arr.sort!
    arr[-1]+arr[-2]
  end
end

def sum_to_n?(arr, n)
  # YOUR CODE HERE
  if arr.empty?
    false
  else
 arr.permutation(2).any? { |a, b| a + b == n }
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  ("Hello, "+ name)
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
  if /^[^aeiou\W]/i.match(s) == nil
    false
  else
    true
  end
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  if s == "0"
    return true
  end
 /^[01]*(00)$/.match(s) != nil
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn, :price
def initialize (isbn, price)
  raise ArgumentError,
  "Invalid Argument" if isbn.empty? || price<=0
  @isbn = isbn
  @price = price
  def price_as_string
    format("$%.2f", @price)
  end
end
end
