require './test/test_helper'
require 'date'
require './lib/enigma'
require 'mocha/minitest'

class EnigmaTest < Minitest::Test
  def test_it_exists
    enigma = Enigma.new

    assert_instance_of Enigma, enigma
  end

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

  def test_it_can_encrypt
    enigma = Enigma.new

    expected =
    {
      encryption: "keder ohulw",
      key: "02715",
      date: "040895"
    }

    assert_equal expected, enigma.encrypt("hello world", "02715", "040895")
  end

  def test_it_can_decrypt
    enigma = Enigma.new

    expected =
    {
      decryption: "hello world",
      key: "02715",
      date: "040895"
    }

    assert_equal expected, enigma.decrypt("keder ohulw", "02715", "040895")
  end

  def test_it_can_encrypt_without_date_provided
    enigma = Enigma.new

    mmddyyyy = "060820"

    expected =
    {
      encryption: "lib sdmcvpu",
      key: "02715",
      date: "060820"
    }
    enigma.stubs(:today_date).returns(mmddyyyy)
    assert_equal expected, enigma.encrypt("hello world", "02715")
  end

  def test_it_can_decrypt_without_date_provided
    enigma = Enigma.new

    mmddyyyy = "060820"

    expected =
    {
      decryption: "hello world",
      key: "02715",
      date: "060820"
    }

    enigma.stubs(:today_date).returns(mmddyyyy)
    assert_equal expected, enigma.decrypt("lib sdmcvpu", "02715")
  end
end
