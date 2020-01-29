require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    song.save
    @@all << song
    song
  end

  def self.new_by_name(name)
    song = self.new
    song.name = name 
    song.save 
    @@all << song
  end 
    

end
