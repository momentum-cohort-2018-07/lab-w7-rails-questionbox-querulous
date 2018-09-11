class AnswersController < ApplicationController
    before_action :set_answer, only: [:show, :edit, :update, :destroy, :set_whiner]
    before_action :set_whiner, only [:destroy]

    def show
    end

    def new
        @answer = Answer.new
    end

    def create
    end

    def destroy
        if current_whiner === @whiner
            @answer.destroy
        end
    end

private
    def set_whiner
        wtest = @answer.whiner_id
        @whiner = Whiner.find(wtest)
    end
    def set_answer
        @answer = Answer.find(params[:id])
    end

    def answer_params
        params.permit(:body, :whiner_id, :whine_id)
    end    
end
