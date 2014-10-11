ar = [1,2,3,4,5]

ar[0] = ['a','b','c','d']
ar[-1] = ['e','f','g','h']


puts ar.inspect


abc = [
    ['a','b','c','d','e'],
    ['f','g','h','i','j'],
    ['k','l','m','n','o'],
    ['p','q','r','s','t'],
    ['u','v','w','x','y']
]

puts abc[0][2]
puts abc[3][4]
puts abc[2][4] = 1


def print_me(array)
  ab = array.flatten
  counter = 0
  ab.each_with_index do |i, index|
    if index == 4 || index == 9 || index == 14 || index == 19
      puts i
    else
      print i + " "
    end

  end
  #return ab
end

print_me(abc)

puts "\n========"

def print_me_two(array)
  array.each do |row|
    row.each do |column|
      print "#{column} "
    end
    puts
  end
end

print_me_two(abc)

puts "\n......"

abc.each do |row|
  puts row.join(' ')
end

puts 'create 10 x 10 array'

box = []

10.times do |row|
  box[row] = []
  10.times do
    box[row] << 0
  end
end

box.each do |row|
  puts row.join(' ')
end






