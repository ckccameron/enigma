require './lib/shift'
require 'date'

class Enigma
  def rand_key_num
    rand(100000).to_s.rjust(5, "0")
  end

  def today_date
    Date.today.strftime("%m%d%y")
  end

  def encrypt(message, key = rand_key_num, date = today_date)
    shift = Shift.new(key, date)
    encryption_hash = Hash.new
    encryption_hash[:encryption] = shift.encrypt(message)
    encryption_hash[:key] = key
    encryption_hash[:date] = date
    encryption_hash
  end

  def decrypt(message, key = rand_key_num, date = today_date)
    shift = Shift.new(key, date)
    decryption_hash = Hash.new
    decryption_hash[:decryption] = shift.decrypt(message)
    decryption_hash[:key] = key
    decryption_hash[:date] = date
    decryption_hash
  end
end
