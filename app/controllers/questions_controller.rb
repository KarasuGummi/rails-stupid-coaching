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
        'To work, get dressed and go, you must! Hmm, yes.'
      else
        'Care, you do not? Get dressed and go to work, you must! Hmm.'
      end
    else
      'The Force will be with you, always.'
    end
  end
end
