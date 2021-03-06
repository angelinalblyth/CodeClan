# 1st Problem

def pet_shop_name(shop)
  shop[:name]
end

# 2nd Problem

def total_cash(shop)
    shop[:admin][:total_cash]
end

# 3rd and 4th Problem

def add_or_remove_cash(shop,amount)
  shop[:admin][:total_cash] += amount
end

# 5th Problem

def pets_sold(shop)
  shop[:admin][:pets_sold]
end

# 6th Problem

def increase_pets_sold(shop,sold)
  shop[:admin][:pets_sold] += sold
end

# 7th Problem

def stock_count(shop)
  shop[:pets].length
end

# 8th and 9th Problem

def pets_by_breed(shop, breed)
  pet_breed = []
  pets = shop[:pets]
  for pet in pets
    if pet[:breed] == breed
      pet_breed.push(pet)
    end
  end
  return pet_breed
end

# 10th Problem

# def find_pet_by_name(shop, name)
#
#   pets = shop[:pets]
#   for pet in pets
#     if pet[:name] == name
#       return pet
#     end
#   end
#
# end

# 11th Problem

def find_pet_by_name(shop, name)

  pets = shop[:pets]
  for pet in pets
    if pet[:name] == name
      return pet
    end
  end
  nil
end

# 12th Problem

def remove_pet_by_name(shop, name)
  pets = shop[:pets]
  for pet in pets
    if pet[:name] == name
       pets.delete(pet)
    end
  end
end

# 13th Problem

def add_pet_to_stock(shop, new_pet)
  pets = shop[:pets]
  pets.push(new_pet)
end

# 14th Problem

def customer_cash(customers)
  customers[:cash]
end

# 15th Problem

def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end

# 16th Problem

def customer_pet_count(customer)
  customer[:pets].length
end

# 17th Problem

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end


# # OPTIONAL

# 18th and 19th Problem

def customer_can_afford_pet(customer, new_pet)
  customer[:cash] >= new_pet[:price]
end

# 20th Problem

# def sell_pet_to_customer(shop, pet, customer)
#   add_pet_to_customer(customer, pet)
#   increase_pets_sold(shop,1)
#   remove_customer_cash(customer, pet[:price])
#   add_or_remove_cash(shop,pet[:price])
# end

# 21st Problem

# def sell_pet_to_customer(shop, pet, customer)
#   return if (pet == nil)
#
#   add_pet_to_customer(customer, pet)
#   increase_pets_sold(shop,1)
#   remove_customer_cash(customer, pet[:price])
#   add_or_remove_cash(shop,pet[:price])
#
# end

# 22nd Problem

def sell_pet_to_customer(shop, pet, customer)
  return if (pet == nil)
  if customer_can_afford_pet(customer, pet)
  add_pet_to_customer(customer, pet)
  increase_pets_sold(shop,1)
  remove_customer_cash(customer, pet[:price])
  add_or_remove_cash(shop,pet[:price])
end

end
