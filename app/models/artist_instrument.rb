class ArtistInstrument < ApplicationRecord
  belongs_to :artist
  belongs_to :instrument

  validates :instrument_id, :artist_id, presence: true
end
