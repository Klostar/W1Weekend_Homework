def pet_shop_name(pet_shop)
  return pet_shop[:name]
end


def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end


def add_or_remove_cash(pet_shop,total)
  pet_shop[:admin][:total_cash] += total
end


def remove_cash(pet_shop,new_total)
  pet_shop[:admin][:total_cash] << new_total
end

def pets_sold(pets_shop)
  pets_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop,new_pets_sold)
  pet_shop[:admin][:pets_sold] += new_pets_sold
end

def stock_count(total_animals)
  total_animals[:pets].count
end

def pets_by_breed(pet_shop,breed)
  all_pets_of_this_breed= []
  pets = pet_shop[:pets]
  for pet in pets
    if pet[:breed] == breed
      all_pets_of_this_breed.push(pet)
    end
  end
  return all_pets_of_this_breed
end

def find_pet_by_name(pet_shop,name)
  pets = pet_shop[:pets]
  for pet in pets
    if pet[:name] == name
      return pet
    end
  end
  return nil
end


def remove_pet_by_name(pet_shop,name)
  index = 0
  position = nil
  pets = pet_shop[:pets]
  for pet in pets
    if pet[:name] == name
      position = index
      break
    end
  index += 1
  end
  pets.delete_at(position) if position != nil
end

def add_pet_to_stock(pet_shop,new_pet)
  pets = pet_shop[:pets]
new_pet={
  name: "Bramble",
  pet_type: :dog,
  breed: "Golden Retriever",
  price: 1000,
}
pets.push(new_pet).count
end


def customer_cash(customer)
  customer[:cash]
end

def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end

def customer_pet_count(customer)
  customer[:pets].count
end

def add_pet_to_customer(customer,new_pet)
customer[:pets] << new_pet.count
end
