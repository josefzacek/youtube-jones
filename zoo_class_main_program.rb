
# main program


require_relative "zoo_class"


class Zoo

  def initialize
    @cage = []
  end

  def add_animal(animal)
    @cage << animal
  end

  def inventory
    return_string = "Name\tColor\t\t\t Stripes \n"
    @cage.each do |animal|
      return_string = return_string + animal.to_csv + "\n"
    end

    return return_string
  end

  def count
    return @cage.count
  end


end
=begin
zoo = []

10.times do |num|
  zoo << Zebra.new("Zebra#{num}", "black and White", rand(20..100))
end

puts zoo.inspect

puts zoo.count

puts zoo[rand(0..zoo.count - 1)].speak

zoo.each do |animal|
  puts "#{animal.name} has #{animal.stripes} #{animal.color} stripes"

end


zoo.each do |animal|
  puts "#{animal.speak}"
end

# get zebras with more than 50 stripes
zoo.each do |animal|
  if animal.stripes > 50
    puts "#{animal.name} has #{animal.stripes} #{animal.color} stripes"
  end
end

zoo.each do |animal|
  puts "#{animal.to_csv}"
end

=end

=begin
tiger = Animal.new("Tiger", "orange")
puts tiger.inspect

tiger_one = Tiger.new('jim', 'pink')
puts tiger_one.inspect
puts tiger_one.speak

puma = Tiger.new('Tina','black')
puts puma.inspect
puts puma.speak


puts puma.identify

puts tiger.identify


cathy = Zebra.new('cathy', 'black and white', 5)

puts cathy.inspect

puts cathy.identify

puts cathy.speak


mick = Hyena.new('mick', 'brown')

puts mick.speak
puts mick.identify

=end

zoo = Zoo.new

puts zoo.inspect


# zoo.add_animal('sheep')
# zoo.add_animal('cow')

10.times do |num|
  zoo.add_animal(Zebra.new("Zebra#{num}", "black and White", rand(20..100)))
end

puts zoo.inspect

puts zoo.inventory

puts "Zoo contains #{zoo.count} animals"

