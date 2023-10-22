class RatingsController < ApplicationController
    def index
        @ratings = Rating.all
    end 

    def new
        # this method creates a new object for the Rating and 
        # passes it as @rating to the new.html.erb template
        # the object is created with new command and it is not saved to the database
        @rating = Rating.new
        @poems = Poem.all
    end

    def create
        # this method creates a new object for the Rating and
        Rating.create params.require(:rating).permit(:score, :poem_id) # this is the strong params method that allows us to pass in the score and poem_id
        # first we take with require the rating object from the params hash
        # then we enumerate the attributes that we want to allow to be passed in with the permit method
        
        #redirecting to the ratings_path
        redirect_to ratings_path
    
    end
end