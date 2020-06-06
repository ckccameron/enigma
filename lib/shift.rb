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
end
