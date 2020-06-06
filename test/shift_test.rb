require_relative './test_helper'
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

  def test_it_can_make_hash_with_letters_as_keys_and_indexes_as_values
    shift = Shift.new("02715", "040895")

    expected = {"a" => 0, "b" => 1, "c" => 2, "d" => 3, "e" => 4, "f" => 5,
      "g" => 6, "h" => 7, "i" => 8, "j" => 9, "k" => 10, "l" => 11, "m" =>12,
      "n" => 13, "o" => 14, "p" => 15, "q" => 16, "r" => 17, "s" => 18,
      "t" => 19, "u" => 20, "v" => 21, "w" => 22, "x" => 23, "y" => 24,
      "z" => 25, " " => 26}

    assert_equal expected, shift.alphabet_with_indexes
  end

  def test_it_can_rotate_the_letter_shift_and_provide_indexes
    shift = Shift.new("02715", "040895")

    expected = {0 => "t", 1 => "u", 2 => "v",  3=> "w", 4 => "x", 5 => "y",
      6 => "z",  7=> " ", 8 => "a", 9 => "b", 10 => "c", 11 => "d", 12 => "e",
      13 => "f", 14 => "g", 15 => "h", 16 => "i", 17 => "j", 18 => "k",
      19 => "l", 20 => "m", 21 => "n", 22 => "o", 23 => "p", 24 => "q",
      25 => "r", 26 => "s"}

    assert_equal expected, shift.shift_rotate("C")
  end

  def test_it_can_encrypt_message
    shift = Shift.new("02715", "040895")

    assert_equal "keder ohulw", shift.encrypt("hello world")
  end

  def test_it_can_rotate_letter_shift_backwards_and_provide_indexes
    shift = Shift.new("02715", "040895")

    expected = {0 => "i", 1 => "j", 2 => "k", 3 => "l", 4 => "m", 5 => "n",
      6 => "o", 7 => "p", 8 => "q", 9 => "r", 10 => "s", 11 => "t", 12 => "u",
      13 => "v", 14 => "w", 15 => "x", 16 => "y", 17 => "z", 18 => " ",
      19 => "a", 20 => "b", 21 => "c", 22 => "d", 23 => "e", 24 => "f",
      25 => "g", 26 => "h"}

    assert_equal expected, shift.shift_rotate_backwards("C")
  end

  def test_it_can_decrypt_mesaage
    shift = Shift.new("02715", "040895")

    assert_equal "hello world", shift.decrypt("keder ohulw")
  end
end
