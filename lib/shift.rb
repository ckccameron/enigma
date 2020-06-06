class Shift
  attr_reader :rand_num,
              :date

  def initialize(rand_num, date)
    @rand_num = rand_num
    @date = date
    @alphabet = ("a".."z").to_a << " "
    # Alphabet.start
  end

  def keys
    generated_keys = {}
    generated_keys["A"] = @rand_num[0..1].to_i
    generated_keys["B"] = @rand_num[1..2].to_i
    generated_keys["C"] = @rand_num[2..3].to_i
    generated_keys["D"] = @rand_num[3..4].to_i
    generated_keys
  end

  def offsets
    generated_offsets = {}
    date_squared = (@date.to_i * @date.to_i).to_s
    generated_offsets["A"] = date_squared[-4].to_i
    generated_offsets["B"] = date_squared[-3].to_i
    generated_offsets["C"] = date_squared[-2].to_i
    generated_offsets["D"] = date_squared[-1].to_i
    generated_offsets
  end

  def shift
    generated_shift = {}
    generated_shift["A"] = keys["A"] + offsets["A"]
    generated_shift["B"] = keys["B"] + offsets["B"]
    generated_shift["C"] = keys["C"] + offsets["C"]
    generated_shift["D"] = keys["D"] + offsets["D"]
    generated_shift
  end

  def encrypt(message)
    # alphabet = Hash.new
    # @alphabet.each do |letter, index|

    message_split = message.split(//)
    altered_text = []
    letter_number = 0
    message_split.each do |letter|
      if letter_number == 0
        index_num = @alphabet.find_index(letter) + shift["A"]
        if index_num < 27
          altered_text << @alphabet[index_num]
        else
          until index_num < 27
            index_num -= 27
          end
          altered_text << @alphabet[index_num]
        end
      elsif letter_number == 1
        index_num = @alphabet.find_index(letter) + shift["B"]
        if index_num < 27
          altered_text << @alphabet[index_num]
        else
          until index_num < 27
            index_num -= 27
          end
          altered_text << @alphabet[index_num]
        end
      elsif letter_number == 2
        index_num = @alphabet.find_index(letter) + shift["C"]
        if index_num < 27
          altered_text << @alphabet[index_num]
        else
          until index_num < 27
            index_num -= 27
          end
          altered_text << @alphabet[index_num]
        end
      elsif letter_number == 3
        index_num = @alphabet.find_index(letter) + shift["D"]
        if index_num < 27
          altered_text << @alphabet[index_num]
        else
          until index_num < 27
            index_num -= 27
          end
          altered_text << @alphabet[index_num]
        end
      end
      letter_number += 1
    end
    new_text = new_text.to_h do |letter|
      [new_text.find_index(letter), letter]
    end
    altered_text.join
  end
end
