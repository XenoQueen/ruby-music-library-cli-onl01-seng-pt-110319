class MusicImporter
  
  attr_accessor :file
  
  def initialize(file)
    @file = file
  end
  
  def import
  @files.each{|f| Song.create_from_filename(f)}
  end
end