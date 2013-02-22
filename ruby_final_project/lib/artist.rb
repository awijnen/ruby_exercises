require_relative './genre'
require_relative './song'

class Artist
  attr_accessor :name, :songs, :genres

  @artists = []

  def self.all
    @artists
  end

  def self.reset_artists
    @artist = []
  end

  def self.count
    @artist.size
  end

  def initialize
    self.class.all << self
    @songs = []
    @genres = []
  end

  def songs_count
    self.songs.size
  end

  def add_genre(song)
    self.genres << song.genre
  end

  def add_song(song)
    self.songs << song
    if song.genre != nil
      self.add_genre(song)
      song.genre.artists << self if !song.genre.artists.include?(self)
    else
    end
  end

end