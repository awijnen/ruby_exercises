require_relative './genre'
require_relative './artist'

class Song

  def genre
    @genre
  end

  def genre=(name)
    @genre = name
    name.songs << self
  end

end