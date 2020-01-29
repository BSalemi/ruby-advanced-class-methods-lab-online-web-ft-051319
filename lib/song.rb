require 'pry'

class Song
  attr_accessor :name

  def self.create(name)
    song = self.new
    song.name = name
    song.save
  end
end
