number_hash = {
    1 => 'bike',
    2 => 'mobile',
    3 => 'frame',
    4 => 'tube',
    5 => 'chain'
}

product_name = ' '


while product_name != ''

  if number_hash.size != 10

    id = rand(1..10)
    while number_hash.include?(id)
      id = rand(1..10)
    end


    puts 'Input product name:'
    product_name = gets.chomp

    number_hash[id] = product_name

  else
    product_name = ''
  end

end


hash_key = number_hash.key("")
number_hash.delete(hash_key)

puts number_hash.inspect


