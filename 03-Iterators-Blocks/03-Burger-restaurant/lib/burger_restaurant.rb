def burger(patty, sauce, topping)
  # TODO: code the `burger` method
  patty = yield(patty) if block_given?
  ["bread", patty, sauce, topping, "bread"]
end

grilled_burger = burger("steak", "ketchup", "onions") do |patty|
  "grilled #{patty}"
end

p grilled_burger
