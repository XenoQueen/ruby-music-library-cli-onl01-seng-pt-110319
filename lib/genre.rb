#require './concerns/findable.rb'
class Genre
  
  extend Concerns::Findable
  attr_accessor :name
  attr_reader :songs
  @@all = []
  
  def initialize(name, artist = nil, genre = nil)
    @name = name
    @songs = []
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
    genre = new(name)
    genre.save
    genre
  end
  
  def artists(name)
    
  end
end