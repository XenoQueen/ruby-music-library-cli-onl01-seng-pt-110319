#require './concerns/findable.rb'
class Artist
  
  #extend Concerns::Findable
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = songs
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