class Poem < ApplicationRecord
    belongs_to :poet
    has_many :ratings

    # add method to calculate average rating
    def average_rating
        ratings.sum(:score) / ratings.count.to_f
    end
end


