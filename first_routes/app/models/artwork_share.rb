class ArtworkShare < ApplicationRecord
    validates :artwork_id,  presence: true
    validates :viewer_id, presence: true
    validate :unique_art

    belongs_to :artist,
        foreign_key: :viewer_id,
        class_name: :User

    belongs_to :artwork,
        foreign_key: :artwork_id,
        class_name: :Artwork
    
    def unique_art
        if artist.shared_artworks.exists?(:id => self.artwork_id)
            self.errors[:shared_artworks] << "This artwork has already been shared with this artist!"
        end
    end

end
