require './lib/enigma'
require './lib/date'

message = File.open(ARGV[0]

enigma = Enigma.new
key =
date = 

incoming_text = handle.read

handle.close

puts "Created 'decrypted.txt' with the key 82648 and date 240818"

text = incoming_text.downcase

writer = File.open(ARGV[1], "w")

writer.write(text)

writer.close
