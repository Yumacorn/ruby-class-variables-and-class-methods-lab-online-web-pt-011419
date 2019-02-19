class Song

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
end


ninety_nine_problems = Song.new("99 Problems")
thriller = Song.new("Thriller")
puts "running!"
puts Song.all
