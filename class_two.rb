class Item
  attr_accessor :description   # automatically creates setter,getter and instance variable for description

  #attr_accessor :description, :price

  #attr_reader :description # creates getter no need to create method
  #attr_writer :description # creates setter no need to create method

  attr_reader :id #creates getter for id, no getter id method needed

  def initialize(description, price)

    @@store = 'Daves store' #class variable - changes value in all objects created from that class
    @id = rand(100..999)
    @description = description
    @price = price
    @size = []

  end

  # getter
  def store
    return @@store
  end

  #setter
  def store=(store)
    @@store = store
  end

  # def id
  #   return @id
  # end


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
pants = Item.new('blue pants', 27.00)

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


#prints id
puts shirt.id

#print store
puts shirt.store
puts pants.store

#change store name store
shirt.store =("jim shop") #name changed in one object but all objects were effected -> @@class variable


#print store
puts shirt.store
puts pants.store


