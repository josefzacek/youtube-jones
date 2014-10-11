require './student.rb'
# require_relative 'student.rb'


herd = []

# herd << Student.new('dave jones', '23456', 'Development')
# herd << Student.new('sally smith', '789766', 'Programming')
# herd << Student.new('joe block', '797533', 'geology')

#puts herd.inspect

# herd[1].add_class('php')
# herd[1].add_class('ruby')
#
# puts herd[0]
# puts herd[1]

puts '***'

student_file = File.open ('students.txt')

while !student_file.eof?
  student = student_file.gets.chomp.split(/,/)
  herd << Student.new(student[0], student[1], student[2])
end

student_file.close


herd.each do |student|
  puts student
end

herd.each do |student|
  student.program = 'math'
end

herd.each do |student|
  puts student
end



