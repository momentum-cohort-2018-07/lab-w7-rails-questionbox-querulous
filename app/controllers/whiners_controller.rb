class WhinersController < ApplicationController

    def index
    end

    def show
    end

    def new
        @whiner = Whiner.new
    end

    def create
        @whiner = Whiner.new(whiner_params)
    end

    def update
    end

    def edit
    end

    def destroy
    end

private

    def set_user
        @user = User.find(params[:id])
    end

    def whiner_params
        params.require(:whiners).permit(:name, :username, :email, :password_digest)
    end

end
