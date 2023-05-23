class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question] # input value

    # create the corresponing answers
    if @question.blank?
      @answer = "Sorry, what?"
    elsif @question.downcase.include?("i am going to work")
      @answer = "Great!"
    elsif @question.downcase.include?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
