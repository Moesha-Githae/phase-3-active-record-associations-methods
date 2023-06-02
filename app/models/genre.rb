class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
   self.song.count
    # return the number of songs in a genre
  end

  def artist_count
    self.artist.count
    # return the number of artists associated with the genre
  end

  def all_artist_names
   names = []
   self.artist.each{|artist| names << artist.name}
   names
    # return an array of strings containing every musician's name
  end
end
