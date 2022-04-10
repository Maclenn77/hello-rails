class V1::GreetingsController < ApplicationController
  def index
    random = rand(1..5)
    render json: Greeting.find(random).to_json
  end
end
