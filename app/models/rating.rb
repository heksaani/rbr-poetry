class Rating < ApplicationRecord
    belongs_to :poem

    def to_s
        "tekstiä"
    end 
end
