
ar = {

  'josef' =>  'colorado',
  'jim' => 'czech',
  'tina'=> 'lalaaswwwwww',
  'mick' => 'michelangelo',
  'jitka' => 'kol',
  'milan' => 'kod'

}

puts ar.key("colorado")



longest = ar.values[0].size
longest_value = ""

#puts longest.class

ar.each do |k,v|


  if v.size > longest
    longest = v.size
    longest_value = v
  end


end

puts longest
puts longest_value
puts ar.key(longest_value)

puts "#{longest_value} has #{longest} character and its key is #{ar.key(longest_value)}"


