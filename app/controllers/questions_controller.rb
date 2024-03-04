class QuestionsController < ApplicationController
  def ask
  end
  def answer
    @question = params[:question]
    if @question == "hello"
      puts "Hola y beunos días"
    elsif @question == "what time is it?"
      puts "#{Time.now}"
    elsif @question.end_with?("?")
      puts "Silly question, get dressed and go to work!"
    elsif @question == "I am going to work"
      puts "Great!"
    else
      puts "I don't care, get dressed and go to work!"
    end
  end
end
