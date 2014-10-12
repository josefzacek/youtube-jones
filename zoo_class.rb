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


class Tiger < Animal

  def speak
    #return 'grrrr'
    #return super  #execute my parents methods
    return super + " Grrr"  #execute my parents methods and string defined
  end

end


class Zebra < Animal
  attr_reader :stripes

  def initialize(name, color, stripes)
    @stripes = stripes
    return super(name, color)
  end

  def speak     # needs to be the same method name
    return super + " Mufassaaa"
  end

  def to_csv
    return  super + ",#{@stripes}"
  end
end

class Hyena < Animal

end

