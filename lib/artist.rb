require 'pry'
class Artist

  attr_accessor :songs, :name, :genres

  @@artists_list = []

  def self.all
    @@artists_list
  end

  def self.reset_artists
    @@artists_list = []
  end

  def self.count
    @@artists_list.length
  end

  def initialize
    @songs = []
    @genres = []
    @@artists_list << self
  end

  def add_song(song)
    @songs << song
    @genres << song.genre unless @genres.include?(song.genre)
    # binding.pry
    song.genre.artists << self unless song.genre == nil || song.genre.artists.include?(self)
  end

  # def genre=(genre)
  #   @genre = genre
  #   genre.artist << self
  # end

end

