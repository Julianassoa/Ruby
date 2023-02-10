DISHES_CALORIES = {
  "Hamburger" => 250,
  "Cheese Burger" => 300,
  "Veggie Burger" => 540,
  "Vegan Burger" => 350,
  "Sweet Potatoes" => 230,
  "Salad" => 15,
  "Iced Tea" => 70,
  "Lemonade" => 90
}

def poor_calories_counter(burger, side, beverage)
  DISHES_CALORIES[burger] + DISHES_CALORIES[side] + DISHES_CALORIES[beverage]
end

MEALS = {
  "Cheesse" => ["Cheese Burger", "Sweet Potatoes", "Iced Tea"],
  "Veggie" => ["Veggie Burger", "Sweet Potatoes", "Iced Tea"],
  "Vegan" => ["Vegan Burger", "Salad", "Lemonade"]
}

def calories_counter(orders)
  orders.each do |order|
    if DISHES_CALORIES.key?(order)
      orders += DISHES_CALORIES[order]
    else
      orders += poor_calories_counter(MEALS[order][0], MEALS[order][1], MEALS[order][2])
    end
  end
  return calories_counter
end
