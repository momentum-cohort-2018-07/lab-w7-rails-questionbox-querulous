class WhinesController < ApplicationController
    
    def index
        @whines = Whines.all
    end

    def show
    end

    def new
        @whine = Whine.new
    end

    def create
    end

    def destroy
    end 

private

    def whines_params
        params.permit(:title, :body, :username, )
    end
end
