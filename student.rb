class Student

  attr_accessor :name, :sid, :program

  def initialize(name, sid, program)
    @name = name
    @sid = sid
    @program = program
    @classes = []
  end

  def add_class(klass)
    @classes << klass
  end

  def remove_class(klass)
    @classes.delete(klass)
  end

  def to_s
    return "#{@name.capitalize.ljust(15)}#{@sid.ljust(10)}#{@program.capitalize.ljust(15)}#{@classes.join(", ")}"
  end

end