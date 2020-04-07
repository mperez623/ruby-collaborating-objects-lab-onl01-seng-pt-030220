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
     song_name = file.split(" - ")[1]
    artist = file.split(" - ")[0]
    song = Song.new(song_name)
    song.artist_name = artist
    song
  end
end