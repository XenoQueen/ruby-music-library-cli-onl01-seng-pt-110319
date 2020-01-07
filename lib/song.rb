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
    all.clear
  end
  
  def save
    self.class.all << self
  end
  
  def self.create(name)
    song = new(name)
    song.save
    song
  end

end