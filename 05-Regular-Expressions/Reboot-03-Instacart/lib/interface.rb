# TODO: you can build your instacart program here!
############# STEP 1 #############
# TODO: you can build your instacart program here!
# 1. welcome the user to the app
puts "===================="
puts "Welcome to Instacart"
puts "===================="
# 2a. Create the items (as a hash)
items = {
  kiwi: 1.25,
  banana: 0.5,
  mango: 4,
  asparagus: 9
}
# 2b. Initialize balance to 0
balance = 0
# 3. List the items in the store
items.each do |item, price|
  puts "#{item}: £#{price}"
end
# 4. We need to loop
shopping = true
while shopping
  # 5. Ask them to add an item to their cart
  puts "What would you like to add to your cart?"
  item = gets.chomp.downcase.to_sym
  if item == :quit # symbol because we called .to_sym right above
    shopping = false
  # 6. Check if the item exists
  elsif items.include?(item) # items.has_key?(item)
    # 6a. if it does then add up the price of the item to the total balance
    # Ask for how many of that item
    balance += items[item]
  else
    # 6b. Display an error message
    puts "Sorry we do not have that item in store"
  end
end
# 7. Give the final quote
puts "-------- Bill ---------"
puts "Total: £#{balance}"
puts "-----------------------"

############# STEP 2 #############
# TODO: you can build your instacart program here!
puts "===================="
puts "Welcome to Instacart"
puts "===================="
items = {
  kiwi: 1.25,
  banana: 0.5,
  mango: 4,
  asparagus: 9
}
# 2b. Initialize an empty cart (a hash)
# cart = {}
cart = Hash.new(0)
items.each do |item, price|
  puts "#{item}: £#{price}"
end
# 4. We need to loop
shopping = true
while shopping
  # 5. Ask them to add an item to their cart
  puts "What would you like to add to your cart?"
  item = gets.chomp.downcase.to_sym
  if item == :quit # symbol because we called .to_sym right above
    shopping = false
  elsif items.include?(item) # items.key?(item)
    # Ask for how many of that item they want
    puts "How many #{item}s do you want?"
    quantity = gets.chomp.to_i
    # push the item with the quantity in the hash
    # key will be the item
    # value will be the quantity
    # if cart.key?(item)
    #   cart[item] += quantity
    # else
    #   cart[item] = quantity
    # end
    cart[item] += quantity
  else
    puts "Sorry we do not have that item in store"
  end
end

# 7. Give the final quote
# initialize balance to 0
balance = 0
# iterate over the cart to display each item x quantity = total price of the item
puts "-------- Bill ---------"
cart.each do |item, quantity|
  price = items[item]
  total_for_item = price * quantity
  puts "#{item}: #{quantity} x £#{price} = £#{total_for_item}"
  balance += total_for_item
end
puts "Total: £#{balance}"
puts "-----------------------"


## Cart as array instead of hash (Optional)
# cart = [
#   {
#     name: 'kiwi',
#     quantity: 3
#   },
#   {
#     name: 'mango',
#     quantity: 2
#   }
# ]

# cart.each do |item|
#   # item => { name: '...', quantity: 3 }
#   item_name = item[:name]
#   item_quantity = item[:quantity]
#   price = items[item_name.to_sym]
#   total_for_item = item_quantity * price
#   balance += total_for_item
# end


############# STEP 3 #############
# TODO: you can build your instacart program here!
puts "===================="
puts "Welcome to Instacart"
puts "===================="

items = {
  kiwi: {
    price: 1.25,
    stock: 4
  },
  banana: {
    price: 0.5,
    stock: 10
  },
  mango: {
    price: 4,
    stock: 1
  },
  asparagus: {
    price: 9,
    stock: 7
  }
}

cart = Hash.new(0)

items.each do |item, item_info|
  price = item_info[:price]
  stock = item_info[:stock]
  puts "#{item}: £#{price} (#{stock} available)"
end

shopping = true

while shopping
  puts "What would you like to add to your cart?"
  item = gets.chomp.downcase.to_sym
  if item == :quit
    shopping = false
  elsif items.include?(item)
    puts "How many #{item}s do you want?"
    quantity = gets.chomp.to_i
    # check if we have enough in stock before adding it to the cart
    chosen_item = items[item]
    if quantity <= chosen_item[:stock]
      chosen_item[:stock] -= quantity
      cart[item] += quantity
    else
      puts "Sorry we only have #{chosen_item[:stock]} #{item}s"
    end
  else
    puts "Sorry we do not have that item in store"
  end
end

balance = 0
puts "-------- Bill ---------"
cart.each do |item, quantity|
  price = items[item][:price] # change how we handle the price
  total_for_item = price * quantity
  puts "#{item}: #{quantity} x £#{price} = £#{total_for_item}"
  balance += total_for_item
end
puts "Total: £#{balance}"
puts "-----------------------"
