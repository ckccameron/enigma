require_relative 'test_helper'
require './lib/date'

class DateTest < MiniTest::Test
  def test_it_exists
    date = Date.new

    assert_instance_of Date, date
  end

  def test_it_is_date_set_as_string_with_6_numbers
    assert_equal 6, Date.string.count("0123456789")
  end
end
