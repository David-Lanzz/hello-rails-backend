class GreetingsController < ApplicationController
  def index
    @greetings = Greeting.all
    render json: @greetings, only:[:text]
  end

  def random
    @greetings = Greeting.all
    @random_greeting = @greetings.sample
    render json: @random_greeting, only:[:text]
  end
end
