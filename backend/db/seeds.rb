# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# add order key to help with sorting (this should be required validation: requires text and requires an order) -- create new migration addOrdertoQuestion

#destory question
QuestionChoice.destroy_all
Question.destroy_all
Style.destroy_all

questions = Question.create([
  {text: "Who's your style icon?", order: 1},
  {text: "What room would you hang out in?", order: 2},
  {text: "When you walk into a crowded room, what would you do?", order: 3},
  {text: "What materials do you own?", order: 4},
  {text: "What artwork would you hang on your wall?", order: 5},
  {text: "What city would you live in?", order: 6},
  {text: "What is your favourite fragrance?", order: 7},
  {text: "What personality do you most aspire to?", order: 8},
   {text: "Your local theatre's playing a few old movies. What movie would you watch?", order: 9},
  {text: "What is your shopping philosophy?", order: 10},
  {text: "It's Friday night and you're going on a date. What do you want to do?", order: 11},
  {text: "If you were to win a closet makeover from two of your favourite stores, which would they be?", order: 12},
  {text: "What is your favourite accessory?", order: 13},
  {text: "Complete this sentence: I want to live life...", order: 14},
  {text: "What would be the anthem to your life?", order: 15},
])

styles = Style.create([
  {name: "Avant-garde"},
  {name: "Bohemian"},
  {name: "Classic"},
  {name: "Romantic"},
  {name: "Urban"}
])

question_choice1 = QuestionChoice.create(
  {
    question_id: questions[0].id,
    style_id: styles[0].id,
    text: "a. Janelle Monae",
    image: "https://cdn.vox-cdn.com/thumbor/KgVTrSluqxc2d4gkJnBrGUOI910=/0x0:6000x4005/1820x1213/filters:focal(2520x1523:3480x2483):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/61648457/1029393662.jpg.0.jpg"
  })

question_choice2 = QuestionChoice.create(
  {
    question_id: questions[0].id,
    style_id: styles[1].id,
    text: "b. Zoe Kravitz",
    image: "https://cdn.vox-cdn.com/thumbor/KgVTrSluqxc2d4gkJnBrGUOI910=/0x0:6000x4005/1820x1213/filters:focal(2520x1523:3480x2483):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/61648457/1029393662.jpg.0.jpg"
  })

question_choice3 = QuestionChoice.create(
  {
    question_id: questions[0].id,
    style_id: styles[2].id,
    text: "c. Amal Clooney",
    image: "https://cdn.vox-cdn.com/thumbor/KgVTrSluqxc2d4gkJnBrGUOI910=/0x0:6000x4005/1820x1213/filters:focal(2520x1523:3480x2483):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/61648457/1029393662.jpg.0.jpg"
  })

question_choice4 = QuestionChoice.create(
  {
    question_id: questions[0].id,
    style_id: styles[3].id,
    text: "d. Mindy Kaling",
    image: "https://cdn.vox-cdn.com/thumbor/KgVTrSluqxc2d4gkJnBrGUOI910=/0x0:6000x4005/1820x1213/filters:focal(2520x1523:3480x2483):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/61648457/1029393662.jpg.0.jpg"
  })

question_choice5 = QuestionChoice.create(
  {
    question_id: questions[0].id,
    style_id: styles[4].id,
    text: "e. Awkwafina",
    image: "https://cdn.vox-cdn.com/thumbor/KgVTrSluqxc2d4gkJnBrGUOI910=/0x0:6000x4005/1820x1213/filters:focal(2520x1523:3480x2483):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/61648457/1029393662.jpg.0.jpg"
  })



# User.destroy_all

# user1 = User.create(
#   {email: "test@test.com",
#     password: "test" })


