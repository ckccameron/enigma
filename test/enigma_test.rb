require './test/test_helper'
require 'date'
require './lib/enigma'

class EnigmaTest < Minitest::Test
  def test_it_exists
    enigma = Enigma.new("hello world", "02715", "040895")

    assert_instance_of Enigma, enigma
  end

  def test_it_has_readable_attributes
    enigma = Enigma.new("hello world", "02715", "040895")

    assert_equal "hello world", enigma.message
    assert_equal "02715", enigma.key
    assert_equal "040895", enigma.date
    assert_instance_of Shift, enigma.shift
  end

  def test_it_has_today_set_as_default_date
    enigma = Enigma.new("hello world", "02715")

    assert_equal 6, enigma.date.length
    assert_equal "20", enigma.date[-2..-1]
  end

  def test_it_can_encrypt
    enigma = Enigma.new("hello world", "02715", "040895")

    expected =
    {
      encryption: "keder ohulw",
      key: "02715",
      date: "040895"
    }

    assert_equal expected, enigma.encrypt
  end
end
