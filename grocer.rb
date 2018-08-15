require 'pry'

def consolidate_cart(cart)
  consol_food = {}
  cart.each do |food_item|
    food_name = food_item.keys[0]

    # If return array does not include food name as a key, add it
    if !consol_food.keys.include?(food_name)
      consol_food[food_name] = food_item.values[0]
      consol_food[food_name][:count] = 1
    elsif consol_food.keys.include?(food_name)
      consol_food[food_name][:count] += 1
    end
  end
  consol_food
end

# For each coupon
# If the number of items the coupon applies to is less than or equal to the number of that item in the cart,
# and that item/coupon combo doesn't exist in the cart,
# add the item coupon combo, set its count to 1,
# and subtract the coupon num applies to from the count of that item in the cart

# If the number of items the coupon applies to is less than or equal to the number of that item in the cart,
# and that item/coupon combo exists in the cart,
# Add the number that coupon code applies to to the coupon/combo count
# and subtract the coupon num applies to from the count of that item in the cart

# Else skip coupon

# Return the cart

def apply_coupons(cart, coupons)
  coupons.each do |coupon|
    binding.pry
    if coupon
  end
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
