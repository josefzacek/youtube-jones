# creates hash from 1 to 10 and ends when 10 products is entered or nothing is entered


#set hash
number_hash = {
    1 => 'bike',
    2 => 'mobile',
    3 => 'frame',
    4 => 'tube',
    5 => 'chain'
}

#get all keys from hash
number_hash_keys = number_hash.keys

#set lowest key
lowest_hash_key = 0

#get highest hash key
number_hash_keys.each do |number|
  if number > lowest_hash_key
    @id = number
  end
end

#set product name to execute while loop
product_name = ' '

while product_name != ''

  if number_hash.size != 10

    #increment highest id by one
    @id = @id + 1

    puts 'Input product name:'
    product_name = gets.chomp

    number_hash[@id] = product_name

  else
    product_name = ''
  end

end

#get key with empty value
empty_value_key = number_hash.key("")

#delete key with empty value from hash
number_hash.delete(empty_value_key)

number_hash.each do |key, value|
  puts "Key #{key} has value of: #{value.capitalize}"
end





