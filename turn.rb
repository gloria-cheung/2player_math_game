class Turn
  attr_reader :num1, :num2
  def initialize
    @num1 = 1 + rand(20)
    @num2 = 1 + rand(20)
  end

end