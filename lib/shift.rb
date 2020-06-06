class Shift
  attr_reader :rand_num,
              :date

  def initialize(rand_num, date)
    @rand_num = rand_num
    @date = date
    @alphabet = Alphabet.start
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
end
