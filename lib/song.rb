require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.create
    song = self.new
    @@all << song
    song
  end

  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = self.new
    song.name = name
    @@all << song
    song
  end


  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.find_by_name(name)
    #iterate through all to find a song whose name is equal to the name that is being passed in as an argument
    @@all.detect{|song| song.name == name}
  end

  def self.find_or_create_by_name(name)
    if self.find_by_name(name) == nil
        self.create_by_name(name)
    else self.find_by_name(name)
    end
  end

  def self.alphabetical
    @@all.sort{|song_1, song_2| song_1.name <=> song_2.name}
  end

end
