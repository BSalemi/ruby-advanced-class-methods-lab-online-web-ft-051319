require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.create
    song = self.new
    @@all << song
    song
  end

  def self.new_by_name(song_name)
    song = self.new
    song.name = song_name
    song
  end

  def self.create_by_name(song_name)
    song = self.new
    song.name = song_name
    @@all << song
    song
  end


  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.find_by_name(song_name)
    #iterate through all to find a song whose name is equal to the name that is being passed in as an argument
    @@all.detect{|song| song.name == song_name}
  end

  def self.find_or_create_by_name(song_name)
   self.find_by_name(song_name) || self.create_by_name(song_name)
  end

  def self.alphabetical
    @@all.sort{|song_1, song_2| song_1.name <=> song_2.name}
  end

  def self.new_from_filename(filename)
    song = self.new
    artist_name = filename.split("-")[0].strip
    song.artist_name = artist_name

    song_name = filename.split("-")[1].strip
    song.name = song_name.chomp(".mp3")
    song
  end

  def self.create_from_filename(filename)
    @@all << self.new_from_filename(filename)
  end

  def self.destroy_all
    @@all.clear
  end

end
