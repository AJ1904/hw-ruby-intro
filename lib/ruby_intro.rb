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
  return "Hello, #{name}"
end

def starts_with_consonant?(string)
  # check if string is empty or does not start with an alphabet
  if string.empty? || !string[0].match(/[a-z]/i)
    return false
  end
  # check if first character is not a consonant
  return !(string[0]).match(/[aeiou]/i)
end

def binary_multiple_of_4?(string)
  # check if string is empty or has any other character than 0 or 1
  if string.empty? || string.match(/[^01]/)
    return false
  end
  # binary number is multiple of 4 if last two digits are 0
  return true if string=="0" || string[-2..].match("00")
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
end
