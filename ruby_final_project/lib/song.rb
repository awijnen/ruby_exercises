require_relative './genre'
require_relative './artist'

class Song

  attr_accessor :name

  def genre
    @genre
  end

  def genre=(genre_instance)
    @genre = genre_instance
    genre_instance.songs << self
  end

end