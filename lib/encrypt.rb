require './lib/enigma'

handle = File.open(ARGV[0], "r")

incoming_text = handle.read

handle.close

enigma = Enigma.new(incoming_text)
changes = enigma.encrypt(incoming_text)
encryption = changes[:encryption]
key = changes[:key]
date = changes[:date]

puts "Created 'encrypted.txt' with the key #{key} and date #{date}"

writer = File.open(ARGV[1], "w")

writer.write(encryption)

writer.close
