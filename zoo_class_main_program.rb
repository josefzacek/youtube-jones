
# main program

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


