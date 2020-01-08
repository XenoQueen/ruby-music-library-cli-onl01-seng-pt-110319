class MusicImporter
  
  attr_accessor :file
  
  def initialize(path)
    @path = path
    @files = Dir.glob(path + "/*.mp3")
    @files.each {|f| f.gsub!(path + "/", "")}
  end
  
  def import
  @files.each{|f| Song.create_from_filename(f)}
  end
end