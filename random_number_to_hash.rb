ha = {
    1 => 0.77,
    2 => 0.22,
    3 => 2.33
}
puts ha.key(0.22)
puts ha[3]




# key_number = ha.has_key?
user_number = ''

while user_number != 0
    puts 'Please input a number'
    user_number = gets.to_i
    puts user_number.class

    if ha.has_key?(user_number)
      puts "yes"
    end
  end
