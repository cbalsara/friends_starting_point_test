require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../friends' )

class TestFriends < MiniTest::Test

  def setup

    @person1 = {
      name: "Rick",
      age: 12,
      monies: 1,
      friends: ["Jay","Keith","Marc", "Val"],
      favourites: {
        tv_show: "Friends",
        things_to_eat: ["charcuterie"]
      } 
    }
    
    @person2 = {
      name: "Jay",
      age: 15,
      monies: 2,
      friends: ["Keith"],
      favourites: {
        tv_show: "Scrubs",
        things_to_eat: ["soup","bread"]
      } 
    }

    @person3 = {
      name: "Val",
      age: 18,
      monies: 20,
      friends: ["Rick", "Jay"],
      favourites: {
        tv_show: "Pokemon",
        things_to_eat: ["ratatouille", "stew"]
      } 
    }

    @person4 = {
      name: "Keith",
      age: 18,
      monies: 20,
      friends: ["Rick", "Jay", "Marc"],
      favourites: {
        tv_show: "Pokemon",
        things_to_eat: ["spaghetti"]
      } 
    }

    @person5 = {
      name: "Marc",
      age: 20,
      monies: 100,
      friends: [],
      favourites: {
        tv_show: "Scrubs",
        things_to_eat: ["spinach"]
      } 
    }

    @people = [@person1, @person2, @person3, @person4, @person5]

  end

  # def test_name
  #   assert_equal("Marc",@person5[:name])
  # end
  #For a given person, return their favourite tv show

  def test_favourite_tv_show
    assert_equal("Scrubs", favourite_tv_show(@person5))
  end

  #For a given person, check if they like a particular food

def test_likes_food?
  assert_equal( true, likes_food?(@person3, "stew"))
  assert_equal( false, likes_food?(@person3, "stewie"))

end

#Allow a new friend to be added to a given person

def test_add_friend
  add_friend(@person5 , "Bob")
  assert_equal( "Bob", @person5[:friends].last)

end



























