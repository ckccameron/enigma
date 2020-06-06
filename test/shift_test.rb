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

  def test_it_can_create_keys
    shift = Shift.new("02715", "040895")

    expected = {"A" => 02, "B" => 27, "C" => 71, "D" => 15}

    assert_equal expected, shift.keys
  end

  def test_it_can_create_offsets
    shift = Shift.new("02715", "040895")

    expected = {"A" => 1, "B" => 0, "C" => 2, "D" => 5}

    assert_equal expected, shift.offsets
  end

  def test_it_can_create_shift
    shift = Shift.new("02715", "040895")

    expected = {"A" => 3, "B" => 27, "C" => 73, "D" => 20}

    assert_equal expected, shift.shift
  end

  def test_it_can_encrypt_message
    shift = Shift.new("02715", "040895")

    assert_equal "keder ohulw", shift.encrypt("hello world")
  end
end
