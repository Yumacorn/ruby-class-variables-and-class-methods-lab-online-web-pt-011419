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

  def self.print_all_song_names
    @@all.each |song|
      song.name
    puts "ehh"
    puts @name
  end

  def name
    puts @name
  end
end


ninety_nine_problems = Song.new("99 Problems")
thriller = Song.new("Thriller")
puts "running!"
puts Song.all

puts Song.print_all_song_names
