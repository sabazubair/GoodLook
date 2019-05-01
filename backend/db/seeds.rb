# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# add order key to help with sorting (this should be required validation: requires text and requires an order) -- create new migration addOrdertoQuestion

#destory question
Question.destroy_all

questions = Question.create([
  {text: "What room would you hang out in?", order: 1},
  {text: "What materials do you own?"},
  {text: "What artwork would you hang on your wall?"},
  {text: "What is your shopping philosophy?"},
  {text: "What city would you live in?"},
  {text: "If you were to win a closet makeover from two of your favourite stores, which would they be?"},
  {text: "What personality do you most aspire to?"},
  {text: "Who's your style icon?"},
  {text: "It's Friday night and you're going on a date. What do you want to do?"},
  {text: "What is your favourite accessory?"},
  {text: "What is your favourite fragrance?"},
  {text: "When you walk into a crowded room, what would you do?"},
  {text: "Complete this sentence: I want to live life..."},
  {text: "Your local theatre's playing a few old movies. What movie would you watch?"},
  {text: "What would be the anthem to your life?"},
])

