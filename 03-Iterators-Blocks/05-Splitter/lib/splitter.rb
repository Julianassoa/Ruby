def size_splitter(array, size)
  # TODO: Return an array of two arrays, the first containing
  #       words of length `size`, the second containing all the other words
  #       In addition to this split, each array should be *sorted*.
  first_array = array.select do |word|
    word.length == size
  end

  second_array = array.reject do |word|
    word.length == size
  end

  return [first_array.sort, second_array.sort]
end

def block_splitter(array)
  # TODO: Return an array of two arrays, the first containing
  #       elements for which the given block yields true,
  #       the second containing all the other elements.
  #       No sort needed this time.
  first_array = array.select do |name|
    yield(name)
  end

  second_array = array.reject do |name|
    yield(name)
  end

  return [first_array.sort, second_array.sort]
end
