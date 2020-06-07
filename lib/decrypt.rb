require './lib/enigma'

key = ARGV[2]
date = ARGV[3]

handle = File.open(ARGV[0], "r")

encrypted_message = handle.read

handle.close

enigma = Enigma.new(encrypted_message, key, date)
decrypted_message = enigma.decrypt(encrypted_message, key, date)
writer = File.open(ARGV[1], "w")

writer.write(decrypted_message[:decryption])
writer.close

p "Created '#{ARGV[1]}' with the key #{decrypted_message[:key]} and date #{decrypted_message[:date]}"

# input = ARGV[0]
# output = ARGV[1]
# key = ARGV[2].to_s
# date = ARGV[3].to_s
#
# message = File.open(input)
#
# incoming_text = message.read
# incoming_key = handle_2
# incoming_date = handle_3
#
# handle.close
#
# enigma = Enigma.new(incoming_text, incoming_key, incoming_date)
# update = enigma.decrypt(incoming_text, incoming_key, incoming_date)
# decrypted_text = update[:decryption]
# require "pry"; binding.pry
#
# puts "Created 'decrypted.txt' with the key #{incoming_key} and date #{incoming_date}"
#
# writer = File.open(ARGV[1], "w")
#
# writer.write(decrypted_text)
#
# writer.close
