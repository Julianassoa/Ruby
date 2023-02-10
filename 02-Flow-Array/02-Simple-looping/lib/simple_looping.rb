def sum_with_for(min, max)
  total = 0
  # we create the total variable outside of the loop so that we can use it for the sum, we add to it in each iteration
  
  return -1 if min > max

  # we can put the return -1 here as we can check the values at this point even before the first loop
  for i in (min..max) do
    total += i
  end
  # for each loop we add total to i (i represents the iteration)
  # example => total = total + 1 on the first loop (total is set at zero),
  # then total = total + 2 on the second loop (total will now be 1 after
  # that first iteration)
  return total
  # we then return total after going through all the iterations
end

def sum_with_while(min, max)
  total = 0
  return -1 if min > max

  # same as above in setting the variables
  while min <= max
    # here we need to use <= to ensure that 100 is added in the final iteration that is true total += min
    # total = total + min, total starts at 0 and then is reset after each iteration,
    # total becomes 1 (0 + 1) after the first iteration and 3 on the second iteration
    min += 1
    # min is now 2, min = min (1) + 1, so on the next iteration you'll be adding 2
  end
  return total
  # we return the total when the minimum gets above 100
end

p sum_with_for(1, 100)
