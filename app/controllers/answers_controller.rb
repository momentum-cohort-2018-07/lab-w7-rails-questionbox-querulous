class AnswersController < ApplicationController
    before_action :set_whine
    before_action :set_whiner, only: [:destroy]

    def show
    end

    def new
        @answer = Answer.new
    end

    def create
        @answer = Answer.new(answers_params)
        
        if @answer.save
            redirect_to @whine, notice: 'Answer successful.'
        else
            render 'new'
        end
    end

    def destroy
        if current_whiner === @whiner
            @answer.destroy
        end
    end

private
    def set_whiner
        wtest = @whine.whiner_id
        @whiner = Whiner.find(wtest)
    end

    def set_whine
        @whine = Whine.find(params[:whine_id])
    end

    def answers_params
        params.require(:answer).permit(:body, :whiner_id, :whine_id)
    end    
end
