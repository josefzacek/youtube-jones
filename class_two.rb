class Item
  attr_accessor :description   # automatically creates setter,getter and instance variable for description
  def initialize(description, price)
    @id = rand(100..999)
    @description = description
    @price = price
    @size = []

  end


=begin
  #getter
  def description
    return @description
  end

  #setter
  def description= (description)
    @description = description
  end
=end

  def price=(price)
    @price = price
  end

  #add item to array
  def add_size (size)
    @size << size
  end

  #remove item from array
  def remove_size(size)
    @size.delete(size)
  end

  #print all sizes
  def print_size
    return "The shirt sizes available are #{@size.join(", ")}"
  end

  #this prints result  // puts shirt
  def to_s
    return "The id is #{@id}, the description is #{@description} and price is #{@price}, sizes: #{@size.join(', ')} "
  end

end

#create item
shirt = Item.new('shirt', 4.40)

#add size
shirt.add_size(12)
puts shirt.inspect
puts shirt

#change description
puts shirt.description
shirt.description = ('white t-shirt')
#add size
shirt.add_size(122)
puts shirt

#print all sizes
puts shirt.print_size

#remove size
shirt.remove_size(12)
puts shirt

#change price
shirt.price= (76)
puts shirt

#print all sizes
puts shirt.print_size


