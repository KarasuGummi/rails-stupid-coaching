class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  private

  def coach_answer(your_answer)
    perfect_answer = 'I am going to work'
    if your_answer != perfect_answer
      if your_answer[-1] == '?'
        'Silly question, get dressed and go to work!'
      else
        "I don't care, get dressed and go to work!"
      end
    else
      'Great!'
    end
  end
end
