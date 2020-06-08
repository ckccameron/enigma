require './test/test_helper'
require 'date'
require './lib/enigma'

class EnigmaTest < Minitest::Test
  def test_it_exists
    # enigma = Enigma.new("hello world", "02715", "040895")
    enigma = Enigma.new

    assert_instance_of Enigma, enigma
  end

  # def test_it_has_readable_attributes
  #   # enigma = Enigma.new("hello world", "02715", "040895")
  #   enigma = Enigma.new
  #
  #   assert_equal "hello world", enigma.message
  #   assert_equal "02715", enigma.key
  #   assert_equal "040895", enigma.date
  #   assert_instance_of Shift, enigma.shift
  # end

  def test_it_can_produce_random_number_for_key
    enigma = Enigma.new

    assert_equal 5, enigma.rand_key_num.length
    assert enigma.rand_key_num.to_i > 0
    assert enigma.rand_key_num.to_i < 100000
  end

  def test_it_can_produce_todays_date
    enigma = Enigma.new

    assert_equal 6, enigma.today_date.length
  end

#   def test_it_has_today_set_as_default_date
#     # enigma = Enigma.new("hello world", "02715")
#     enigma = Enigma.new
#
#     assert_equal 6, enigma.date.length
#     assert_equal "20", enigma.date[-2..-1]
#   end
#
#   def test_it_has_random_key_as_default
#     # enigma = Enigma.new("hello world")
#     enigma = Enigma.new
#
#     assert_equal 5, enigma.key.length
#   end
#
#   def test_it_can_encrypt
#     # enigma = Enigma.new("hello world", "02715", "040895")
#     enigma = Enigma.new
#
#     expected =
#     {
#       encryption: "keder ohulw",
#       key: "02715",
#       date: "040895"
#     }
#
#     assert_equal expected, enigma.encrypt("hello world", "02715", "040895")
#   end
#
#   def test_it_can_decrypt
#     # enigma = Enigma.new("keder ohulw", "02715", "040895")
#     enigma = Enigma.new
#
#     expected =
#     {
#       decryption: "hello world",
#       key: "02715",
#       date: "040895"
#     }
#
#     assert_equal expected, enigma.decrypt("keder ohulw", "02715", "040895")
#   end
end
