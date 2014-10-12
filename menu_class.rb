#menu class


class Menu
  attr_reader :quit

  def initialize(*menu_args)
    @menu_args = menu_args
    @quit = @menu_args.length
  end

end

menu = Menu.new(
    'Load character 1',
    'Load characters 2',
    'Fight',
    'Quit'
)

while (choice = menu.get_menu_choice) != menu.quit

end


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


