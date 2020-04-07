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
    Song.new_by_filename(files).at_least(4).times
  end
  
  
  
  
  
end