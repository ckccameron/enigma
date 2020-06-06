class Shift
  attr_reader :rand_num,
              :date
              
  def initialize(rand_num, date)
    @rand_num = rand_num
    @date = date
    @alphabet = Alphabet.start
  end
end
