class Animal

  attr_accessor :name, :color

  def initialize(name, color)
    @name = name
    @color = color
  end

  def speak
    return "hello my name is #{@name}"
  end

  def identify
    return "my name is #{@name} and I am #{self.class}"
  end

  def to_csv
    return "#{@name},#{@color}"
  end

end

