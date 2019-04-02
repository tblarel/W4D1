class Artwork < ApplicationRecord
    
    has_many :artwork_shares,
        foreign_key: :artwork_id,
        class_name: :ArtworkShare

    belongs_to :artist,
    foreign_key: :artist_id,
    class_name: :User 

    validate :unique_art

    def unique_art 
        # debugger
        if artist.artworks.exists?(:title => self.title)
            self.errors[:art] << "Must be a unique title!"
        end 
    end
end
