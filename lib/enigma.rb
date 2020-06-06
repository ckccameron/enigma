require './lib/shift'
require 'date'

class Enigma
  attr_reader :message,
              :key,
              :date,
              :shift

  def initialize(message, key, date)
    @message = message
    @key = key
    @date = date
    @shift = Shift.new(@key, @date)
  end

  def encrypt(message, key, date)
    #hash with 3 keys - all strings
  end

  def decrypt(ciphertext, key, date)
    #hash with 3 keys - all strings
  end
end
