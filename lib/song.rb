require 'pry'

class Song

  def self.create(name)
    song = self.new 
    song.name = name
    song.save 
  end 
end
