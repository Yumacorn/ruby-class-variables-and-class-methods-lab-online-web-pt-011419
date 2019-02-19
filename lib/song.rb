require 'pry'

class Song
  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @@count += 1
    @@genres << genre #if !@@genres.include(genre)
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
  end

  def self.count
    @@count
  end

  def self.genres
    genre_list = []
    @@genres.each do |genre|
      genre_list << genre if !genre_list.include?(genre)
    end
    genre_list
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      count = 0
      if genre_count.keys.include?(genre)
        genre_count[genre] = genre_count[genre] + 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end

  def self.artists
    artists = []
    @@artists.each do |artist|
      artists << artist if !artists.include?(artist)
    end
    artists
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      count = 0
      if artist_count.keys.include?(artist)
        artist_count[artist] = artist_count[artist] + 1
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end
end
