require './concerns/findable.rb'
class Song
  
  extend Concerns::Findable
  attr_accessor :name
  attr_reader :genre, :artist
  @@all = []
  
  def initialize(name, artist = nil, genre = nil)
    @name = name
    @artist = artist
    @genre = genre
  end

  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def save
    @@all << self 
  end
  
  def self.create(name)
    s = self.new(name)
    s.save
    s
  end
  
  def self.new_from_filename(file)
    name = file.gsub(".mp3", "").split (" - ")
    song_name = name[1]
    artist_name = Artist.find_or_create_by_name(name[0])
    genre_name = Genre.find_or_create_by_name(name[2])
    self.new(song_name, artist_name, genre_name)
  end
  
  def self.create_from_filename(file)
    @@all << self.new_from_filename(file)
  end
end