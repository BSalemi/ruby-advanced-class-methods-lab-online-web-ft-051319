require 'pry'

class Song
  attr_accessor :name

  @@all = []
  def self.create(name)
    song = self.new
    song.name = name
    @@all << song 
  end
end
