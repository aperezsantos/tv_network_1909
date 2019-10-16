require 'minitest/autorun'
require 'minitest/pride'
require './lib/network'
require './lib/show'
require './lib/character'

class NetworkTest < Minitest::Test

  def test_it_exists
    nbc = Network.new("NBC")

    assert_instance_of Network, nbc
  end

  def test_it_has_name
    nbc = Network.new("NBC")

    assert_equal "NBC", nbc.name
  end

  def test_it_can_have_shows
    #create an empty array that will hold the name of shows, once you add them
    nbc = Network.new("NBC")
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])
    leslie_knope = Character.new({name: "Leslie Knope", actor: "Amy Poehler", salary: 2_000_000})
    ron_swanson = Character.new({name: "Ron Swanson", actor: "Nick Offerman", salary: 1_400_000})
    parks_and_rec = Show.new("Parks and Recreation", "Michael Shur & Greg Daniels", [leslie_knope, ron_swanson])

    assert_equal [], nbc.shows
  end

  def test_it_can_add_shows_to_the_array
    #check to see if the empty array you created has the names of the shows you added
    nbc = Network.new("NBC")
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])
    leslie_knope = Character.new({name: "Leslie Knope", actor: "Amy Poehler", salary: 2_000_000})
    ron_swanson = Character.new({name: "Ron Swanson", actor: "Nick Offerman", salary: 1_400_000})
    parks_and_rec = Show.new("Parks and Recreation", "Michael Shur & Greg Daniels", [leslie_knope, ron_swanson])

    assert_equal knight_rider, nbc.add_show(knight_rider)
    assert_equal parks_and_rec, nbc.add_show(parks_and_rec)
  end

  def test_it_has_array_of_shows
    #now test the empty array has been populated with an array of the shows you added
    nbc = Network.new("NBC")
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])
    leslie_knope = Character.new({name: "Leslie Knope", actor: "Amy Poehler", salary: 2_000_000})
    ron_swanson = Character.new({name: "Ron Swanson", actor: "Nick Offerman", salary: 1_400_000})
    parks_and_rec = Show.new("Parks and Recreation", "Michael Shur & Greg Daniels", [leslie_knope, ron_swanson])

    nbc.add_show(knight_rider)
    nbc.add_show(parks_and_rec)
    assert_equal [knight_rider, parks_and_rec], nbc.shows
  end

end
