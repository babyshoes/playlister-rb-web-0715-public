class Song


  attr_accessor :name, :genre, :artist


  def genre
    @genre
  end

  def genre=(genre)
    @genre = genre
    genre.songs << self
  end

end