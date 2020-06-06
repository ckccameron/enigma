require './lib/shift'
require 'date'

class Enigma
  attr_reader :message,
              :key,
              :date,
              :shift

  def initialize(message, key = rand(100000).to_s.rjust(5, "0"), date = Date.today.strftime("%m%d%y"))
    @message = message
    @key = key
    @date = date
    @shift = Shift.new(@key, @date)
  end

  def encrypt
    encryption_hash = Hash.new
    encryption_hash[:encryption] = @shift.encrypt(@message)
    encryption_hash[:key] = @key
    encryption_hash[:date] = @date
    encryption_hash
  end

  def decrypt

  end
end
