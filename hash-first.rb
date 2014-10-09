ha = {}

puts ha.empty?

ha[:name] = 'josef'
ha[:age] = 33

puts ha.empty?


ha.each_value do |k|
  puts k
end

