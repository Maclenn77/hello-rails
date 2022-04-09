class V1::GreetingsController < ApplicationController
  def index
    random = rand(5)
    render json: {
      greeting: a_random_greeting(random),
      language: a_random_language(random)
    }.to_json
  end

  private

  def a_random_language(ind)
    languages = %w[Spanish Korean English Russian Japanese]
    languages[ind]
  end

  def a_random_greeting(ind)
    greetings = ['¡Hola! Bienvenidos.', '안녕하세요', 'Hello, welcome!', 'Здравствуйте!', 'こんにちは']
    greetings[ind]
  end
end
