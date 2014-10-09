ar = [9,2,3,4,5,7,5,5,8,1]


user_input = ' '

while user_input != ''

  puts 'Enter number (enter to end)'
  user_input = gets.chomp

  ar << user_input

end

 puts ar.join(', ')



