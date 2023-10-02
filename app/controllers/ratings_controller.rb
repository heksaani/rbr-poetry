class RatingsController < ApplicationController
    def index # this will render the index.html.erb file in the views/ratings folder
        @ratings = Rating.all
    end
    # get all ratings for a poem
    #def 
end