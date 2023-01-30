# frozen_string_literal: true

# Part 1

def sum(arr)
  # ans = 0
  # arr.each do |i|
  #   ans += i
  # end
  # return ans
  # one liner ruby
  arr.sum
end

def max_2_sum(arr)
  # if (0..2) === arr.length
  #   return sum(arr)
  # else
  #   first, second = -Float::INFINITY, -Float::INFINITY
  #   arr.each do |i|
  #     if i >= first
  #       first, second = i, first
  #     elsif i>=second
  #       second = i
  #     end
  #   end
  # end
  # return first+second
  # sort the array, get the last two elements and return their sum
  arr.sort.last(2).sum
end

def sum_to_n?(arr, number)
  hash = [] # Array.new
  arr.each do |i|
    return true if hash.include?(number - i)

    hash.push(i)
  end
  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(string)
  # check if string is empty or does not start with an alphabet
  return false if string.empty? || !string[0].match(/[a-z]/i)

  # check if first character is not a consonant
  !(string[0]).match(/[aeiou]/i)
end

def binary_multiple_of_4?(string)
  # check if string is empty or has any other character than 0 or 1
  return false if string.empty? || string.match(/[^01]/)

  # binary number is multiple of 4 if last two digits are 0
  true if string == '0' || string[-2..].match('00')
end

# Part 3

# Object representing a book
class BookInStock
  # tell Ruby to create setters and getters
  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0

    @isbn = isbn
    @price = price
  end

  def price_as_string
    # '$' + '%0.2f' % price
    format('$%0.2f', @price)
  end
end
