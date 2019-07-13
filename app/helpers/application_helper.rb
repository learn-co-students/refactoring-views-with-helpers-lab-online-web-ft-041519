module ApplicationHelper
    def edit_artist(song)
        if !song.artist 
            link_to "Add Artist", edit_song_path(song)
        else 
            link_to song.artist.name, artist_path(song.artist) 
        end 
    end 
end
