class WhinersController < ApplicationController
    before_action :set_whiner, only: [:show, :edit, :update, :destroy]

    def index
        @whiners = Whiner.all
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
        @user.destroy
    end

private

    def set_whiner
        @whiner = Whiner.find(params[:id])
    end

    def whiner_params
        params.require(:whiner).permit(:name, :username, :email, :password_digest)
    end

end
