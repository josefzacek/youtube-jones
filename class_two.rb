class Item

  def initialize(description, price)
    @id = rand(100..999)
    @description = description
    @price = price
    @size = []

  end

  #getter
  def description
    return @description
  end

  #setter
  def description= (description)
    @description = description
  end

  #add item to array
  def add_size (size)
    @size << size
  end

  #remove item from array
  def remove_size(size)
    @size.delete(size)
  end

  #this prints result ()
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

#change descrption
puts shirt.description
shirt.description = ('white t-shirt')
#add size
shirt.add_size(122)
puts shirt

#remove size
shirt.remove_size(12)
puts shirt


