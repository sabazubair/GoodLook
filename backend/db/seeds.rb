# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Remove existing data in Goodlook database
UserOutfit.destroy_all
QuestionChoice.destroy_all
User.destroy_all
Result.destroy_all
Outfit.destroy_all
Style.destroy_all
Question.destroy_all

#Create the 15 quiz questions with order and text
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
  {text: "What would be the anthem to your life?", order: 15}
])

#Create the 5 styles for the quiz
styles = Style.create([
  {name: "Avant-garde", description: "Your style persona is Avant-garde. You share your style with Janelle Monae.", image: "/assets/results/ag_0_result.jpg"},
  {name: "Bohemian", description: "Your style persona is Bohemian.", image: "/assets/results/boho_1_result.jpeg"},
  {name: "Classic", description: "Your style persona is Classic.", image: "/assets/results/amal_result.jpg"},
  {name: "Romantic", description: "Your style persona is Romantic.", image: "assets/results/mindyresult1.jpg"},
  {name: "Urban", description: "Your style persona is Urban.", image: "assets/results/zoe_result1.jpg"}
])

#Create the question choices for each question where each question choice is associated with one question and one style

# ----------- Question 1/15 -----------
question_choice_1a = QuestionChoice.create(
  {
    question_id: questions[0].id,
    style_id: styles[0].id,
    text: "a. Janelle Monae",
    image: "/assets/question_1/q1_janellemonae.jpg"
  })

question_choice_1b = QuestionChoice.create(
  {
    question_id: questions[0].id,
    style_id: styles[1].id,
    text: "b. Zoe Kravitz",
    image: "/assets/question_1/q1_zk4.jpg"
  })

question_choice_1c = QuestionChoice.create(
  {
    question_id: questions[0].id,
    style_id: styles[2].id,
    text: "c. Amal Clooney",
    image: "/assets/question_1/q1_amclooney.jpg"
  })

question_choice_1d = QuestionChoice.create(
  {
    question_id: questions[0].id,
    style_id: styles[3].id,
    text: "d. Mindy Kaling",
    image: "/assets/question_1/q1_mindykaling.jpg"
  })

question_choice_1e = QuestionChoice.create(
  {
    question_id: questions[0].id,
    style_id: styles[4].id,
    text: "e. Vanessa Hudgens",
    image: "/assets/question_1/boho_vh.jpg"
  })

# ----------- Question 2/15 -----------
question_choice_2a = QuestionChoice.create(
  {
    question_id: questions[1].id,
    style_id: styles[0].id,
    text: nil,
    image: "/assets/question_2/avantgarde_room.jpg"
  })

question_choice_2b = QuestionChoice.create(
  {
    question_id: questions[1].id,
    style_id: styles[1].id,
    text: nil,
    image: "/assets/question_2/boho_room2.jpg"
  })

question_choice_2c = QuestionChoice.create(
  {
    question_id: questions[1].id,
    style_id: styles[2].id,
    text: nil,
    image: "/assets/question_2/classic_room.jpg"
  })

question_choice_2d = QuestionChoice.create(
  {
    question_id: questions[1].id,
    style_id: styles[3].id,
    text: nil,
    image: "/assets/question_2/romantic_room1.jpg"
  })

question_choice_2e = QuestionChoice.create(
  {
    question_id: questions[1].id,
    style_id: styles[4].id,
    text: nil,
    image: "/assets/question_2/urban_room2.jpg"
  })

# ----------- Question 3/15 -----------
question_choice_3a = QuestionChoice.create(
  {
    question_id: questions[2].id,
    style_id: styles[0].id,
    text: "a. Grab a drink and join in on a discussion about Elon Musk's latest doings.",
    image: nil
  })

question_choice_3b = QuestionChoice.create(
  {
    question_id: questions[2].id,
    style_id: styles[1].id,
    text: "b. Invite everyone to join you in the kitchen to taste your famous guac!",
    image: nil
  })

question_choice_3c = QuestionChoice.create(
  {
    question_id: questions[2].id,
    style_id: styles[2].id,
    text: "c. Say hello to everyone and ask how they are doing.",
    image: nil
  })

question_choice_3d = QuestionChoice.create(
  {
    question_id: questions[2].id,
    style_id: styles[3].id,
    text: "d. Find a group of people and share a personal, fun story. You are the life of the party.",
    image: nil
  })

question_choice_3e = QuestionChoice.create(
  {
    question_id: questions[2].id,
    style_id: styles[4].id,
    text: "e. Grab a seat on the nearest bean bag chair and put on the Raptors game.",
    image: nil
  })

# ----------- Question 4/15 -----------
question_choice_4a = QuestionChoice.create(
  {
    question_id: questions[3].id,
    style_id: styles[0].id,
    text: "a. I love cotton for its durability and comfort, but what matters most to me is that my clothing is unique to me.",
    image: nil
  })

question_choice_4b = QuestionChoice.create(
  {
    question_id: questions[3].id,
    style_id: styles[1].id,
    text: "b. I own a variety of prints like animal prints, floral prints and cultural patterns.",
    image: nil
  })

question_choice_4c = QuestionChoice.create(
  {
    question_id: questions[3].id,
    style_id: styles[2].id,
    text: "c. When I buy clothing, I am looking for quality. Most of my clothing is made from cotton, linen, pure denim and leather.",
    image: nil
  })

question_choice_4d = QuestionChoice.create(
  {
    question_id: questions[3].id,
    style_id: styles[3].id,
    text: "d. I have a few expensive pieces like silk, velvet, chiffon but I generally wear anything with florals and pastel colors.",
    image: nil
  })

question_choice_4e = QuestionChoice.create(
  {
    question_id: questions[3].id,
    style_id: styles[4].id,
    text: "e. It doesn’t matter. I buy whatever is in season and looks good.",
    image: nil
  })

# ----------- Question 5/15 -----------
question_choice_5a = QuestionChoice.create(
  {
    question_id: questions[4].id,
    style_id: styles[0].id,
    text: nil,
    image: "/assets/question_5/politicalart_ag.jpg"
  })

question_choice_5b = QuestionChoice.create(
  {
    question_id: questions[4].id,
    style_id: styles[1].id,
    text: nil,
    image: "/assets/question_5/elephantart_boho.jpg"
  })

question_choice_5c = QuestionChoice.create(
  {
    question_id: questions[4].id,
    style_id: styles[2].id,
    text: nil,
    image: "/assets/question_5/classicartwork.jpg"
  })

question_choice_5d = QuestionChoice.create(
  {
    question_id: questions[4].id,
    style_id: styles[3].id,
    text: nil,
    image: "/assets/question_5/rom_artwork.jpg"
  })

question_choice_5e = QuestionChoice.create(
  {
    question_id: questions[4].id,
    style_id: styles[4].id,
    text: nil,
    image: "/assets/question_5/urb_artwork.jpg"
  })

# ----------- Question 6/15 -----------
question_choice_6a = QuestionChoice.create(
  {
    question_id: questions[5].id,
    style_id: styles[0].id,
    text: "a. Oslo, Norway",
    image: "/assets/question_6/ag_oslonorway.jpg"
  })

question_choice_6b = QuestionChoice.create(
  {
    question_id: questions[5].id,
    style_id: styles[1].id,
    text: "b. Oaxaca, Mexico",
    image: "/assets/question_6/boho_mexico.jpg"
  })

question_choice_6c = QuestionChoice.create(
  {
    question_id: questions[5].id,
    style_id: styles[2].id,
    text: "c. London, England",
    image: "/assets/question_6/class_londoneng.jpg"
  })

question_choice_6d = QuestionChoice.create(
  {
    question_id: questions[5].id,
    style_id: styles[3].id,
    text: "d. Paris, France",
    image: "/assets/question_6/rom_parisfrance.jpg"
  })

question_choice_6e = QuestionChoice.create(
  {
    question_id: questions[5].id,
    style_id: styles[4].id,
    text: "e. New York, USA",
    image: "/assets/question_6/urb_newyork.jpg"
  })

# ----------- Question 7/15 -----------
question_choice_7a = QuestionChoice.create(
  {
    question_id: questions[6].id,
    style_id: styles[0].id,
    text: "a. Mad et Len, Blackmusk",
    image: "/assets/question_7/ag_fragrance.jpg"
  })

question_choice_7b = QuestionChoice.create(
  {
    question_id: questions[6].id,
    style_id: styles[1].id,
    text: "b. Saje, Goddess Natural Perfume",
    image: "/assets/question_7/boho_naturalperfume.jpg"
  })

question_choice_7c = QuestionChoice.create(
  {
    question_id: questions[6].id,
    style_id: styles[2].id,
    text: "c. Yves Saint Laurent, Black Opium",
    image: "/assets/question_7/class_blackopium.jpg"
  })

question_choice_7d = QuestionChoice.create(
  {
    question_id: questions[6].id,
    style_id: styles[3].id,
    text: "d. Marc Jacobs, Daisy",
    image: "/assets/question_7/rom_marcjacobs.jpg"
  })

question_choice_7e = QuestionChoice.create(
  {
    question_id: questions[6].id,
    style_id: styles[4].id,
    text: "e. Clean, Sephora",
    image: "/assets/question_7/urb_clean.jpg"
  })

# ----------- Question 8/15 -----------
question_choice_8a = QuestionChoice.create(
  {
    question_id: questions[7].id,
    style_id: styles[0].id,
    text: "a. Risk-taker, lives life to the edge",
    image: nil
  })

question_choice_8b = QuestionChoice.create(
  {
    question_id: questions[7].id,
    style_id: styles[1].id,
    text: "b. Free-spirited",
    image: nil
  })

question_choice_8c = QuestionChoice.create(
  {
    question_id: questions[7].id,
    style_id: styles[2].id,
    text: "c. Well-groomed, sophisticated",
    image: nil
  })

question_choice_8d = QuestionChoice.create(
  {
    question_id: questions[7].id,
    style_id: styles[3].id,
    text: "d. Vivacious, charismatic, light-hearted",
    image: nil
  })

question_choice_8e = QuestionChoice.create(
  {
    question_id: questions[7].id,
    style_id: styles[4].id,
    text: "e. Trend-setter, being at the centre of all the action",
    image: nil
  })

# ----------- Question 9/15 -----------
question_choice_9a = QuestionChoice.create(
  {
    question_id: questions[8].id,
    style_id: styles[0].id,
    text: "a. The Matrix",
    image: "https://cdn.vox-cdn.com/thumbor/KgVTrSluqxc2d4gkJnBrGUOI910=/0x0:6000x4005/1820x1213/filters:focal(2520x1523:3480x2483):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/61648457/1029393662.jpg.0.jpg"
  })

question_choice_9b = QuestionChoice.create(
  {
    question_id: questions[8].id,
    style_id: styles[1].id,
    text: "b. We Bought a Zoo",
    image: "https://cdn.vox-cdn.com/thumbor/KgVTrSluqxc2d4gkJnBrGUOI910=/0x0:6000x4005/1820x1213/filters:focal(2520x1523:3480x2483):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/61648457/1029393662.jpg.0.jpg"
  })

question_choice_9c = QuestionChoice.create(
  {
    question_id: questions[8].id,
    style_id: styles[2].id,
    text: "c. Good Will Hunting",
    image: "https://cdn.vox-cdn.com/thumbor/KgVTrSluqxc2d4gkJnBrGUOI910=/0x0:6000x4005/1820x1213/filters:focal(2520x1523:3480x2483):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/61648457/1029393662.jpg.0.jpg"
  })

question_choice_9d = QuestionChoice.create(
  {
    question_id: questions[8].id,
    style_id: styles[3].id,
    text: "d. 27 Dresses",
    image: "https://cdn.vox-cdn.com/thumbor/KgVTrSluqxc2d4gkJnBrGUOI910=/0x0:6000x4005/1820x1213/filters:focal(2520x1523:3480x2483):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/61648457/1029393662.jpg.0.jpg"
  })

question_choice_9e = QuestionChoice.create(
  {
    question_id: questions[8].id,
    style_id: styles[4].id,
    text: "e. Black Panther",
    image: "https://cdn.vox-cdn.com/thumbor/KgVTrSluqxc2d4gkJnBrGUOI910=/0x0:6000x4005/1820x1213/filters:focal(2520x1523:3480x2483):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/61648457/1029393662.jpg.0.jpg"
  })

# ----------- Question 10/15 -----------
question_choice_10a = QuestionChoice.create(
  {
    question_id: questions[9].id,
    style_id: styles[0].id,
    text: "a. Defying convention and norms",
    image: nil
  })

question_choice_10b = QuestionChoice.create(
  {
    question_id: questions[9].id,
    style_id: styles[1].id,
    text: "b. Naturally-sourced, colourful, earthy",
    image: nil
  })

question_choice_10c = QuestionChoice.create(
  {
    question_id: questions[9].id,
    style_id: styles[2].id,
    text: "c. Simplicity, timeless, basics",
    image: nil
  })

question_choice_10d = QuestionChoice.create(
  {
    question_id: questions[9].id,
    style_id: styles[3].id,
    text: "d. Playful, fun, light-hearted",
    image: nil
  })

question_choice_10e = QuestionChoice.create(
  {
    question_id: questions[9].id,
    style_id: styles[4].id,
    text: "e. Trendy, practical and comfortable",
    image: nil
  })

# ----------- Question 11/15 -----------
question_choice_11a = QuestionChoice.create(
  {
    question_id: questions[10].id,
    style_id: styles[0].id,
    text: "a. Go to a Banksy art exhibit",
    image: nil
  })

question_choice_11b = QuestionChoice.create(
  {
    question_id: questions[10].id,
    style_id: styles[1].id,
    text: "b. Attend a night yoga event at High Park",
    image: nil
  })

question_choice_11c = QuestionChoice.create(
  {
    question_id: questions[10].id,
    style_id: styles[2].id,
    text: "c. Go to Canoe restaurant and have their braised beef",
    image: nil
  })

question_choice_11d = QuestionChoice.create(
  {
    question_id: questions[10].id,
    style_id: styles[3].id,
    text: "d. Watch a movie at a drive-in theatre",
    image: nil
  })

question_choice_11e = QuestionChoice.create(
  {
    question_id: questions[10].id,
    style_id: styles[4].id,
    text: "e. Play games at the Rec Room",
    image: nil
  })

# ----------- Question 12/15 -----------
question_choice_12a = QuestionChoice.create(
  {
    question_id: questions[11].id,
    style_id: styles[0].id,
    text: "a. Etsy, Unconventional",
    image: nil
  })

question_choice_12b = QuestionChoice.create(
  {
    question_id: questions[11].id,
    style_id: styles[1].id,
    text: "b. Free People, Anthropologie",
    image: nil
  })

question_choice_12c = QuestionChoice.create(
  {
    question_id: questions[11].id,
    style_id: styles[2].id,
    text: "c. Ralph Lauren, Ann Taylor",
    image: nil
  })

question_choice_12d = QuestionChoice.create(
  {
    question_id: questions[11].id,
    style_id: styles[3].id,
    text: "d. Suzy Shier, BCBGMAXAZRIA",
    image: nil
  })

question_choice_12e = QuestionChoice.create(
  {
    question_id: questions[11].id,
    style_id: styles[4].id,
    text: "e. Lululemon, H&M",
    image: nil
  })

# ----------- Question 13/15 -----------
question_choice_13a = QuestionChoice.create(
  {
    question_id: questions[12].id,
    style_id: styles[0].id,
    text: nil,
    image: "https://cdn.vox-cdn.com/thumbor/KgVTrSluqxc2d4gkJnBrGUOI910=/0x0:6000x4005/1820x1213/filters:focal(2520x1523:3480x2483):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/61648457/1029393662.jpg.0.jpg"
  })

question_choice_13b = QuestionChoice.create(
  {
    question_id: questions[12].id,
    style_id: styles[1].id,
    text: nil,
    image: "https://cdn.vox-cdn.com/thumbor/KgVTrSluqxc2d4gkJnBrGUOI910=/0x0:6000x4005/1820x1213/filters:focal(2520x1523:3480x2483):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/61648457/1029393662.jpg.0.jpg"
  })

question_choice_13c = QuestionChoice.create(
  {
    question_id: questions[12].id,
    style_id: styles[2].id,
    text: nil,
    image: "https://cdn.vox-cdn.com/thumbor/KgVTrSluqxc2d4gkJnBrGUOI910=/0x0:6000x4005/1820x1213/filters:focal(2520x1523:3480x2483):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/61648457/1029393662.jpg.0.jpg"
  })

question_choice_13d = QuestionChoice.create(
  {
    question_id: questions[12].id,
    style_id: styles[3].id,
    text: nil,
    image: "https://cdn.vox-cdn.com/thumbor/KgVTrSluqxc2d4gkJnBrGUOI910=/0x0:6000x4005/1820x1213/filters:focal(2520x1523:3480x2483):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/61648457/1029393662.jpg.0.jpg"
  })

question_choice_13e = QuestionChoice.create(
  {
    question_id: questions[12].id,
    style_id: styles[4].id,
    text: nil,
    image: "https://cdn.vox-cdn.com/thumbor/KgVTrSluqxc2d4gkJnBrGUOI910=/0x0:6000x4005/1820x1213/filters:focal(2520x1523:3480x2483):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/61648457/1029393662.jpg.0.jpg"
  })

# ----------- Question 14/15 -----------
question_choice_14a = QuestionChoice.create(
  {
    question_id: questions[13].id,
    style_id: styles[0].id,
    text: "a. On the edge",
    image: nil
  })

question_choice_14b = QuestionChoice.create(
  {
    question_id: questions[13].id,
    style_id: styles[1].id,
    text: "b. In full bloom",
    image: nil
  })

question_choice_14c = QuestionChoice.create(
  {
    question_id: questions[13].id,
    style_id: styles[2].id,
    text: "c. With clarity",
    image: nil
  })

question_choice_14d = QuestionChoice.create(
  {
    question_id: questions[13].id,
    style_id: styles[3].id,
    text: "d. To the fullest and have fun",
    image: nil
  })

question_choice_14e = QuestionChoice.create(
  {
    question_id: questions[13].id,
    style_id: styles[4].id,
    text: "e. In the moment",
    image: nil
  })

# ----------- Question 15/15 -----------
question_choice_15a = QuestionChoice.create(
  {
    question_id: questions[14].id,
    style_id: styles[0].id,
    text: "a. When The Party's Over by Billie Eilish",
    image: nil
  })

question_choice_15b = QuestionChoice.create(
  {
    question_id: questions[14].id,
    style_id: styles[1].id,
    text: "b. Imagine by John Lennon",
    image: nil
  })

question_choice_15c = QuestionChoice.create(
  {
    question_id: questions[14].id,
    style_id: styles[2].id,
    text: "c. I Want It That Way by Backstreet Boys",
    image: nil
  })

question_choice_15d = QuestionChoice.create(
  {
    question_id: questions[14].id,
    style_id: styles[3].id,
    text: "d. Haven't Met You Yet by Michael Bublé",
    image: nil
  })

question_choice_15e = QuestionChoice.create(
  {
    question_id: questions[14].id,
    style_id: styles[4].id,
    text: "e. Sunflower by Post Malone",
    image: nil
  })
# USER SEED ------------------
user1 = User.create(
  {
    id: 1,
    email: "test@test.com",
    password: "test"
  })

user2 = User.create(
  {
    id: 2,
    email: "example@example.com",
    password: "example"
  })

# RESULTS SEED -------------------
result1 = Result.create(
  {
    style_id: styles[0].id,
    user_id: user1.id
  })

# OUTFIT SEED ------------------
# AVANT-GARDE, style_id 0

outfit1 = Outfit.create(
  {
    style_id: styles[0].id,
    image: "/assets/ag_outfits/ag_abstractiontop.jpg",
    text: "Abstraction Top",
    link: "https://theunconventional.co.uk/dzhus-abstraction-top.html"
  })

outfit2 = Outfit.create(
  {
    style_id: styles[1].id,
    image: "/assets/ag_outfits/ag_blackmaxitop.jpg",
    text: "Black Maxi Top",
    link: "https://www.etsy.com/ca/listing/510008898/new-summer-top-black-cotton-shirt-black?ref=related-3"
  })

user_outfit1 = UserOutfit.create(
  {
    user_id: 2,
    outfit_id: outfit1.id
  })

user_outfit2 = UserOutfit.create(
  {
    user_id: 1,
    outfit_id: outfit2.id
  })
