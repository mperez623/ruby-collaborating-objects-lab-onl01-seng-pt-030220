require 'pry'

class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  
  def files
    file_names = Dir.children(@path)
  end
  
  def import
    song_file = Song.new_by_filename(files)
    
  end
  
  
  
  
  
end