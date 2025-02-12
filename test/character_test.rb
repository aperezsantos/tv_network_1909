require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'

class CharacterTest < Minitest::Test
  def test_it_exists
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    assert_instance_of Character, kitt
  end

  def test_it_has_name
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    assert_equal "KITT", kitt.name
  end

  def test_it_has_actor
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    assert_equal "William Daniels", kitt.actor
  end

  def test_it_has_salary
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    assert_equal 1_000_000.to_i, kitt.salary.to_i
  end
end
