#menu class


class Menu
  attr_reader :quit

  def initialize(*menu_args)
    @menu_args = menu_args
    @quit = @menu_args.length
  end
  def get_menu_choice

    @menu_args.each_with_index do |item, index|
      puts "#{index + 1}. #{item}"
    end

    puts "Enter your choice:"
    user_choice = gets.to_i
    return user_choice


  end

end

menu = Menu.new(
    'Load character 1',
    'Load characters 2',
    'Change weapons 2',
    'Fight',
    'Quit'
)

# puts "enter #{menu.quit} to quit"
# menu.get_menu_choice

while (choice = menu.get_menu_choice) != menu.quit
  case choice
    when 1
      puts 'Loading character'
    when 2
      puts 'Loading character'
    when 3
      puts 'Fighting'
    when 4
      puts 'Change weapon'
  end

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


