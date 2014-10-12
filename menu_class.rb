#menu class


class Menu

  def initialize(*menu_args)
    @menu_args = menu_args
  end

end

menu = Menu.new(
    'Load character 1',
    'Load characters 2',
    'Fight',
    'Quit'
)




# user_choice = 0
#
# while user_choice != 4
#   puts '1. Load character'
#   puts '2. Load character'
#   puts '3. Fight'
#   puts '4. Quit'
#
#   puts 'Enter number:'
#   user_choice = gets.to_i
#
#   case user_choice
#     when 1
#       puts 'Loading character'
#     when 2
#       puts 'Loading character'
#     when 3
#       puts 'Fighting'
#   end
# end


