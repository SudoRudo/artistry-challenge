class Artist < ApplicationRecord
    has_many :artist_instruments
    has_many :instruments, through: :artist_instruments

    validates :name, :age, presence: true
    validates :title, uniqueness: true
    validates :age, numericality: {greater_than:15}

    # def pairings
    #     ArtistInstrument.all.map do |pairing|
    #         pairing.artist_id == self.id
    #     end
        
    # end

    # def instruments
    #     pairings = ArtistInstrument.all.where(artist_id: self.id)
    #     instruments = pairings.each do 
    # end

    def each_instrument
        self.instruments.each do |instrument|
            instrument.name
        end
    end

end
