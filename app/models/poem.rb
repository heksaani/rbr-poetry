class Poem < ApplicationRecord
    belongs_to :poet
    #has_many :comments
    has_many :ratings
end
