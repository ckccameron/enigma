require_relative './test_helper'
require './lib/alphabet'
require './lib/shift'

class ShiftTest < Minitest::Test
  def test_it_exists
    shift = Shift.new("02715", "040895")

    assert_instance_of Shift, shift
  end

  def test_it_has_random_number_and_date_attributes
    shift = Shift.new("02715", "040895")

    assert_equal "02715", shift.rand_num
    assert_equal "040895", shift.date
  end
end
