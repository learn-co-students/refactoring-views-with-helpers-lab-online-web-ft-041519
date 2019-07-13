class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  def artist_name=(name)
    if !Artist.find_by(name: name)
      self.build_artist(name: name) 
    else 
      self.artist = Artist.find_by(name: name)
    end 
  end

end
