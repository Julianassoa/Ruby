def sum_odd_indexed(array)
  total = 0
  # TODO: computes the sum of elements at odd indexes (1, 3, 5, 7, etc.)
  #       You should use Enumerable#each_with_index
  array.each_with_index do |value, index|
    total += value if index.odd?
  end
  return total
end

def even_numbers(array)
  # TODO: Return the even numbers from a list of integers.
  #       You should use Enumerable#select
  array.select { |num| num.even? }
end

def short_words(array, max_length)
  # TODO: Take an array of words, return the array of words not exceeding max_length characters
  # You should use Enumerable#reject
  array.reject { |term| term.size > max_length }
end

def first_under(array, limit)
  # TODO: Return the first number from an array that is less than limit.
  #       You should use Enumerable#find
  array.find { |num| num < limit }
end

def add_bang(array)
  # TODO: Take an array of strings and return a new array with "!" appended to each string.
  #       You should use Enumerable#map
  array.map { |word| word + "!" }
end

def concatenate(array)
  # TODO: Concatenate all strings given in the array.
  #       You should use Enumerable#reduce
  array.reduce(&:concat)
end

def sorted_pairs(array)
  pairs = []
  # TODO: Reorganize an array into slices of 2 elements, and sort each slice alphabetically.
  # You should use Enumerable#each_slice
  array.each_slice(2) do |word|
    pairs << word.sort
  end
  return pairs
end
