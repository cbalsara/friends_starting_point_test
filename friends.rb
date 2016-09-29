# 1. For a given person, return their favourite tv show

def favourite_tv_show(person_hash)
  return person_hash[:favourites][:tv_show]
end 

# 2. For a given person, check if they like a particular food

def likes_food?(person_hash, passed_dish )
  favourite_dishes_array = person_hash[:favourites][:things_to_eat] 

  for a_favourite_dish in favourite_dishes_array
    return true if a_favourite_dish == passed_dish
  end
  
  return false
  
end 

# 3. Allow a new friend to be added to a given person

def add_friend(person_added_to, person_to_add)
  




# 4. Allow a friend to be removed from a given person
# 5. Find the total of everyone's money
# 6. For two given people, allow the first person to loan a given value of money to the other
# 7. Find the set of everyone's favourite food joined together
# 8. Find people with no friends

# INSANE
# Find the people who have the same favourite tv show