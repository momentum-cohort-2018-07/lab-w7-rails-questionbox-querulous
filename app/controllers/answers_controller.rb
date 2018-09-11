class AnswersController < ApplicationController

    def show
    end

    def new
        @answer = Answer.new
    end

    def create
    end

    def destroy
        if current_user
    end

private

    def set_answer
        @answer = Answer.find(params[:id])
    end

    def answer_params
        params.permit(:body, :whiner_id, :whine_id)
    end    
end
