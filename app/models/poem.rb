class Poem < ApplicationRecord
    belongs_to :poet
    has_many :ratings, dependent: :destroy

    # add method to calculate average rating
    def average_rating
        ratings.average(:score)
    end

    #method to_s to show both the name of the poem and the name of the poet
    def to_s
        "#{name} by #{poet.name}"
    end

end


