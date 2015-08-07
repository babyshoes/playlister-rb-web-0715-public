class Genre

  attr_accessor :name, :songs, :artists

  @@genres_list = []

  def self.all
    @@genres_list
  end

  def self.reset_genres
    @@genres_list = []
  end

  def self.count
    @@genres_list.size
  end

  def reset_genres
    @@genres_list = []
  end

  def initialize
    @@genres_list << self
    @songs = []
    @artists = []
  end

end