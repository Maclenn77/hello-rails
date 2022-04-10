# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

languages = %w[Spanish Korean English Russian Japanese]
greetings = ['¡Hola! Bienvenidos.', '안녕하세요', 'Hello, welcome!', 'Здравствуйте!', 'こんにちは']
index = 0

languages.each do |lang|
    Greeting.create(greeting: greetings[index],  language: lang)
    index += 1
end