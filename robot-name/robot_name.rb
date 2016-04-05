class Robot

  attr_accessor :name

  def initialize
    @name = "RX83#{rand(9)}"
  end

  def reset
    self.name = "RX8#{rand(99)}"
  end
end
