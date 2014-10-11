def length_finder(input_array)
  string_length = []

  input_array.each do |i|
    string_length << i.length
  end

  return string_length
end


ar = ['josef', 'jim', 'alabama', 'some non sence']
print length_finder(ar)

puts "\n***"


string = 'Ruby is The best language in the World'

def find_frequency(sentence, word)
  ar = sentence.downcase.split(' ')

  count = 0
  ar.each do |i|
    if i == word
      count = count + 1
    end
  end

  # puts ar.inspect
  # puts word

  return count
end


print find_frequency(string, 'the')


puts "\n***"

string_two = "Sort words in a sentence",

def sort_string(string_two)
  ar = string_two.split(" ")

  arr = ar.sort_by {|x| x.length}

  result = arr.join(" ")

 return result
end

print sort_string(string)

puts "\n***"

array = [1,3,4,6,33,22]

def random_select(array, n)

  result = []
  counter = 0

  while counter < n
    ar_shuffle = array.shuffle.first
    result << ar_shuffle

    counter = counter + 1
  end

  return result

end

print random_select(array, 2)

puts "\n***"

sentence = 'Never odd or even'
def palindrome?(sentence)

  sentence_edit = sentence.gsub(' ', '')

  puts sentence_edit

  if sentence_edit.downcase == sentence_edit.downcase.reverse
    return true
  else
    return false
  end
end

print palindrome?(sentence)

puts "\n***"

restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
restaurant_menu.each do |k, v|
  inc = v.to_f / 10
  puts "#{k}: $#{v + inc}"
end

restaurant_menu.each do |item, price|
  restaurant_menu[item] = price + (price * 0.1)
end

restaurant_menu.each do |k, v|
  inc = v.to_f / 10
  restaurant_menu[k] =  v + inc
end

puts "\n***"


def artax
  a = [:punch, 0]
  b = [:kick, 72]
  c = [:stops_bullets_with_hands, false]


  key_value_pairs = Hash[*a, *b, *c]

  Hash[key_value_pairs]
end
puts artax


puts "====="

puts [1, 2, 3, 4].inject(8) { |result, element| result + element } # => 10

puts "====="

def hi
  return lambda { "Do or do not" }
  end
puts hi