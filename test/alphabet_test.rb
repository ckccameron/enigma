require_relative 'test_helper'
require './lib/alphabet'

class AlphabetTest < MiniTest::Test
  def test_it_exists
    alphabet = Alphabet.new

    assert_instance_of Alphabet, alphabet
  end

  def test_it_starts_with_string_of_alphabet
    assert_equal "abcdefghijklmnopqrstuvwxyz ", Alphabet.start
  end
end
