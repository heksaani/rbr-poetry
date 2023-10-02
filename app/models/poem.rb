class Poem < ApplicationRecord
    belongs_to :poet
    has_many :ratings

    # add method to calculate average rating
    def average_rating
        ratings.average(:score)
    end
end


