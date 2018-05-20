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

def find_pet_by_name(shop, name)

  pets = shop[:pets]
  for pet in pets
    if pet[:name] == name
      return pet
    end
  end

end
