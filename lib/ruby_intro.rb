# frozen_string_literal: true

# Part 1

def sum(arr)
  ans = 0
  arr.each do |i|
    ans += i
  end
  return ans
end

def max_2_sum(arr)
  if (0..2) === arr.length
    return sum(arr)
  else
    first, second = -Float::INFINITY, -Float::INFINITY
    arr.each do |i|
      if i >= first
        first, second = i, first
      elsif i>=second
        second = i
      end
    end
  end
  return first+second
end

def sum_to_n?(arr, number)
  hash = Array.new
  arr.each do |i|
    if hash.include?(number - i)
      return true
    else
      hash.push(i)
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
end
