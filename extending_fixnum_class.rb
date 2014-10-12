class Fixnum

  # return seconds in minutes
  def minutes
    return self * 60
    # return "There are #{self * 60} seconds in #{self} minutes"
  end

  # return seconds in hours
  def hours
    return "There are #{self * (60 * 60)} seconds in #{self} hours"
  end

  # return seconds in days
  def days
    return "There are #{self * (24 * 60 * 60)} seconds in #{self} days"
  end

  def weeks
    return self * (7 * 24 * 60 * 60)
  end

  def ago
    return Time.now - self
  end

end

puts Time.now
puts 10.minutes
puts 2.hours
puts 1.days

puts 10.minutes.ago

puts 3.weeks.ago



