class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  def artist_name=(name)
    if Artist.find_by(name: name)
      self.artist = Artist.find_by(name: name)
    else
      self.artist = Artist.create(name: name)
    end
    self.artist
  end
end
