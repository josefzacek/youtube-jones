# Time.now.to_i  = number of seconds since 1.1.1970

class MrCoffee

  attr_reader :power, :water_level, :coffee_level

  @@max_water_level = 50.0      #float
  @@max_coffee_level = 14.0     #float
  @@standard_cup = 20.0         #float

  def initialize()
    @power = false              #boolean
    @water_level = 0.0          #float
    @coffee_level = 0.0         #float
    @clock = 0                  #time
    @brewed_coffee_level = 0.0  #float
    @filter = false             #boolean
    @brewing_time = 0           #time
    @element_temp = 0.0         #float
    @brewing = false            #boolean
  end

  def turn_on
    @power = true
  end

  def turn_off
    @power = false
  end

  def add_water(water)

    if @water_level <= @@max_water_level
      @water_level = @water_level + water
    end

    if @water_level > @@max_water_level
      @water_level = @@max_water_level
      puts 'too much water'
    end
  end

  def remove_water(water)
    @water_level = @water_level - water
    if @water_level < 0.0
      @water_level = 0.0
    end
  end

  def add_coffee(coffee) #todo make sure filter is on
    @coffee_level +=coffee
    if @coffee_level > @@max_coffee_level
      @coffee_level = @@max_coffee_level
      puts 'too much coffee added'
    end
  end

  def add_filter
    @filter = true
  end

  def remove_filter
    @filter = false
    puts 'filter removed'
  end

  def brew
    if @power && @water_level > 0.0 && @filter && @coffee_level > 0.0
      @brewing = true
      self.remove_water(@@standard_cup)
      @coffee_level = @coffee_level - 5 # todo peg this
      self.remove_filter
      @brewed_coffee_level = @brewed_coffee_level + @@standard_cup #todo peg this
      @brewing = false
      return "Your coffee is getting ready"
    else
      return "Cannot brew, missing stuff; Water level: #{@water_level}\t Coffee level #{@coffee_level}\t Filter status: #{@filter}\t Power status: #{@power}"
    end
  end

end




my_coffee = MrCoffee.new()

puts my_coffee.inspect
puts my_coffee.power

my_coffee.turn_on

puts my_coffee.power

my_coffee.turn_off

puts my_coffee.power


my_coffee.add_water(20)
puts my_coffee.inspect

my_coffee.add_water(10)
puts my_coffee.inspect

my_coffee.add_water(10.8)
puts my_coffee.inspect

puts my_coffee.water_level



my_coffee.add_water(11)
puts my_coffee.inspect
puts my_coffee.water_level

my_coffee.add_coffee(12)
puts my_coffee.inspect
puts my_coffee.coffee_level

my_coffee.add_coffee(12)
puts my_coffee.inspect
puts my_coffee.coffee_level
my_coffee.add_filter
my_coffee.turn_on

puts my_coffee.inspect

puts my_coffee.brew

puts my_coffee.inspect

