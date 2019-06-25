require 'pry'

class MusicImporter 
  attr_reader :path, :song, :artist, :genre, :musiclibrarycontroller
  
  def initialize(path)
    @path = path
  end 
  
  def files
    files = Dir.glob("#{path}/*").map{|file| file.gsub("#{path}/", '') }
  end 
  
  def import
    files.each{ |file| Song.create_from_filename(file) }
  end 
  
  
  
end 