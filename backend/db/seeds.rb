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
  {text: "How would your friends describe you?", order: 4},
  {text: "What artwork would you hang on your wall?", order: 5},
  {text: "What city would you live in?", order: 6},
  {text: "You're ordering food at your favourite restaurant, how do you decide?", order: 7},
  {text: "You're looking for a fragrance in the perfume section. Which one would you try first?", order: 8},
  {text: "Your local theatre's playing a few old movies. What movie would you watch?", order: 9},
  {text: "Looks like you've got to go shopping. You shop based on:", order: 10},
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
  {name: "Classic", description: "You are a planner and value quality over gimmicks. You like the clean and sleek look with no extra designs or patterns. Simple but powerful. You share your style with Amal Clooney.", image: "/assets/results/amal_result.jpg"},
  {name: "Romantic", description: "You are playful and light-hearted and full of life. You love colour, especially pastel colours and you also love different designs like ruffles, lace, pleats, florals or ribbons. What is life without a dash of personality? You share your style with Mindy Kaling.", image: "assets/results/mindyresult1.jpg"},
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
    text: "b. Vanessa Hudgens",
    image: "/assets/question_1/boho_vh.jpg"
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
    text: "e. Zoe Kravitz",
    image: "/assets/question_1/q1_zk4.jpg"
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
    text: "a. Daring",
    image: nil
  })

question_choice_4b = QuestionChoice.create(
  {
    question_id: questions[3].id,
    style_id: styles[1].id,
    text: "b. Easygoing",
    image: nil
  })

question_choice_4c = QuestionChoice.create(
  {
    question_id: questions[3].id,
    style_id: styles[2].id,
    text: "c. Strategic",
    image: nil
  })

question_choice_4d = QuestionChoice.create(
  {
    question_id: questions[3].id,
    style_id: styles[3].id,
    text: "d. Vivacious",
    image: nil
  })

question_choice_4e = QuestionChoice.create(
  {
    question_id: questions[3].id,
    style_id: styles[4].id,
    text: "e. Practical",
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
    image: "/assets/question_6/newyork_cabs.jpg"
  })

# ----------- Question 7/15 -----------
question_choice_7a = QuestionChoice.create(
  {
    question_id: questions[6].id,
    style_id: styles[0].id,
    text: "a. Try out a new dish you haven't ordered before",
    image: nil
  })

question_choice_7b = QuestionChoice.create(
  {
    question_id: questions[6].id,
    style_id: styles[1].id,
    text: "b. Order a party platter to share with everyone",
    image: nil
  })

question_choice_7c = QuestionChoice.create(
  {
    question_id: questions[6].id,
    style_id: styles[2].id,
    text: "c. Go with the one you always order",
    image: nil
  })

question_choice_7d = QuestionChoice.create(
  {
    question_id: questions[6].id,
    style_id: styles[3].id,
    text: "d. Order the dish that looks Instagram worthy",
    image: nil
  })

question_choice_7e = QuestionChoice.create(
  {
    question_id: questions[6].id,
    style_id: styles[4].id,
    text: "e. Get the new dish that everyone has been talking about",
    image: nil
  })

# ----------- Question 8/15 -----------
question_choice_8a = QuestionChoice.create(
  {
    question_id: questions[7].id,
    style_id: styles[0].id,
    text: "a.Mad et Len, Blackmusk",
    image: "/assets/question_7/ag_fragrance.jpg"
  })

question_choice_8b = QuestionChoice.create(
  {
    question_id: questions[7].id,
    style_id: styles[1].id,
    text: "b. Saje, Goddess Natural Perfume",
    image: "/assets/question_7/boho_naturalperfume.jpg"
  })

question_choice_8c = QuestionChoice.create(
  {
    question_id: questions[7].id,
    style_id: styles[2].id,
    text: "c. Yves Saint Laurent, Black Opium",
    image: "/assets/question_7/class_blackopium.jpg"
  })

question_choice_8d = QuestionChoice.create(
  {
    question_id: questions[7].id,
    style_id: styles[3].id,
    text: "d. Marc Jacobs, Daisy",
    image: "/assets/question_7/rom_marcjacobs.jpg"
  })

question_choice_8e = QuestionChoice.create(
  {
    question_id: questions[7].id,
    style_id: styles[4].id,
    text: "e. Clean, Sephora",
    image: "/assets/question_7/urb_clean.jpg"
  })

# ----------- Question 9/15 -----------
question_choice_9a = QuestionChoice.create(
  {
    question_id: questions[8].id,
    style_id: styles[0].id,
    text: "a. The Matrix",
    image: "/assets/question_9/matrix.jpg"
  })

question_choice_9b = QuestionChoice.create(
  {
    question_id: questions[8].id,
    style_id: styles[1].id,
    text: "b. We Bought a Zoo",
    image: "/assets/question_9/zoomovie.jpg"
  })

question_choice_9c = QuestionChoice.create(
  {
    question_id: questions[8].id,
    style_id: styles[2].id,
    text: "c. Good Will Hunting",
    image: "/assets/question_9/goodwillhunting.jpg"
  })

question_choice_9d = QuestionChoice.create(
  {
    question_id: questions[8].id,
    style_id: styles[3].id,
    text: "d. The Devil Wears Prada",
    image: "/assets/question_9/devilwearsprada.jpg"
  })

question_choice_9e = QuestionChoice.create(
  {
    question_id: questions[8].id,
    style_id: styles[4].id,
    text: "e. Black Panther",
    image: "/assets/question_9/blackpanther.jpg"
  })

# ----------- Question 10/15 -----------
question_choice_10a = QuestionChoice.create(
  {
    question_id: questions[9].id,
    style_id: styles[0].id,
    text: "a. What is unique to you and not easily found at every store",
    image: nil
  })

question_choice_10b = QuestionChoice.create(
  {
    question_id: questions[9].id,
    style_id: styles[1].id,
    text: "b. Whether it's from recycled materials",
    image: nil
  })

question_choice_10c = QuestionChoice.create(
  {
    question_id: questions[9].id,
    style_id: styles[2].id,
    text: "c. Quality and simplicity",
    image: nil
  })

question_choice_10d = QuestionChoice.create(
  {
    question_id: questions[9].id,
    style_id: styles[3].id,
    text: "d. How colourful and pleasing it looks",
    image: nil
  })

question_choice_10e = QuestionChoice.create(
  {
    question_id: questions[9].id,
    style_id: styles[4].id,
    text: "e. How practical it is",
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
    image: "/assets/question_13/ag_leathernecklace.jpg"
  })

question_choice_13b = QuestionChoice.create(
  {
    question_id: questions[12].id,
    style_id: styles[1].id,
    text: nil,
    image: "/assets/question_13/rattanbag.jpeg"
  })

question_choice_13c = QuestionChoice.create(
  {
    question_id: questions[12].id,
    style_id: styles[2].id,
    text: nil,
    image: "/assets/question_13/pearlbracelet.jpg"
  })

question_choice_13d = QuestionChoice.create(
  {
    question_id: questions[12].id,
    style_id: styles[3].id,
    text: nil,
    image: "/assets/question_13/katespadescarf.jpg"
  })

question_choice_13e = QuestionChoice.create(
  {
    question_id: questions[12].id,
    style_id: styles[4].id,
    text: nil,
    image: "/assets/question_13/beatsbydre.jpg"
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
# AVANT-GARDE, STYLE_ID = 0

outfit_ag_1= Outfit.create(
  {
    style_id: styles[0].id,
    image: "/assets/ag_outfits/ag_abstractiontop.jpg",
    text: "Abstraction Top",
    link: "https://theunconventional.co.uk/dzhus-abstraction-top.html"
  })

outfit_ag_2= Outfit.create(
  {
    style_id: styles[0].id,
    image: "/assets/ag_outfits/ag_blackmaxitop.jpg",
    text: "Black Maxi Top",
    link: "https://www.etsy.com/ca/listing/510008898/new-summer-top-black-cotton-shirt-black?ref=related-3"
  })

outfit_ag_3= Outfit.create(
  {
    style_id: styles[0].id,
    image: "/assets/ag_outfits/ag_blacktunicdress.jpg",
    text: "Black Tunic Dress ",
    link: "https://www.etsy.com/ca/listing/477239838/black-tunic-shirt-black-shirt-long?ref=related-7"
  })

outfit_ag_4= Outfit.create(
  {
    style_id: styles[0].id,
    image: "/assets/ag_outfits/ag_genderisalie.jpg",
    text: "Gial Oveersized Sweater",
    link: "https://theunconventional.co.uk/mark-baigent-gial-oversized-sweater.html"
  })

outfit_ag_5= Outfit.create(
  {
    style_id: styles[0].id,
    image: "/assets/ag_outfits/ag_tailoredlinenblazer.jpg",
    text: "Tailored Linen Blazer",
    link: "https://theunconventional.co.uk/nordan-tailored-linen-blazer.html"
  })

outfit_ag_6= Outfit.create(
  {
    style_id: styles[0].id,
    image: "/assets/ag_outfits/ag_futuristicdress.jpg",
    text: "Futuristic Black Dress",
    link: "https://www.etsy.com/ca/listing/678293684/futuristic-dress-black-dress-avant-garde?ref=related-2"
  })

outfit_ag_7= Outfit.create(
  {
    style_id: styles[0].id,
    image: "/assets/ag_outfits/ag_tailoredlinenblazer.jpg",
    text: "Tailored Linen Blazer",
    link: "https://www.etsy.com/ca/listing/678293684/futuristic-dress-black-dress-avant-garde?ref=related-2"
  })

outfit_ag_8= Outfit.create(
  {
    style_id: styles[0].id,
    image: "/assets/ag_outfits/ag_jerseydrape.jpg",
    text: "Jersey Drape Dress",
    link: "https://theunconventional.co.uk/jersey-drape-dress.html"
  })

outfit_ag_9= Outfit.create(
   {
      style_id: styles[0].id,
      image: "/assets/ag_outfits/ag_asymmetriclinenshirtdress.jpg",
      text: "Asymmetric Linen Shirt Dress",
      link: "https://theunconventional.co.uk/barbara-i-gongini-asymmetric-linen-shirt-dress.html"
    })


#BOHO, STYLE_ID = 1

outfit_boho_1 = Outfit.create(
  {
    style_id: styles[1].id,
    image: "/assets/boho_outfits/boho_flarepants.jpg",
    text: "Flare Pants",
    link: "https://www.threebirdnest.com/collections/whats-new/products/soria-ruffled-tulip-hem-flare-pants-brown"
  })

outfit_boho_2 = Outfit.create(
  {
    style_id: styles[1].id,
    image: "/assets/boho_outfits/boho_tiedye",
    text: "Tie Dye Maxi Dress",
    link: "https://www.threebirdnest.com/collections/dresses/products/estella-tie-dye-plunge-maxi-dress-mocha"
  })

outfit_boho_3 = Outfit.create(
  {
    style_id: styles[1].id,
    image: "/assets/boho_outfits/boho_floraljumpsuit",
    text: "Floral Jumpsuit",
    link: "https://www.threebirdnest.com/collections/dresses/products/montana-floral-print-jumpsuit-mustard"
  })

outfit_boho_4 = Outfit.create(
  {
    style_id: styles[1].id,
    image: "/assets/boho_outfits/boho_romperplaysuit.jpg",
    text: "Romper Playsuit",
    link: "https://www.threebirdnest.com/collections/whats-new/products/sunday-harem-romper-playsuit-mustard"
  })

outfit_boho_5 = Outfit.create(
  {
    style_id: styles[1].id,
    image: "/assets/boho_outfits/boho_offshoulderdress.jpg",
    text: "Off Shoulder Dress",
    link: "https://www.threebirdnest.com/collections/whats-new/products/carmella-embroidered-off-shoulder-ruffle-layered-shift-dress-sand"
  })

outfit_boho_6 = Outfit.create(
  {
    style_id: styles[1].id,
    image: "/assets/boho_outfits/boho_embroidereddress.jpg",
    text: "Embroidered Dress",
    link: "https://www.threebirdnest.com/collections/whats-new/products/costa-mesa-embroidered-maxi-dress-mustard"
  })

outfit_boho_7 = Outfit.create(
  {
    style_id: styles[1].id,
    image: "/assets/boho_outfits/boho_maxishirt.jpg",
    text: "Floral Maxi Skirt",
    link: "https://www.threebirdnest.com/collections/whats-new/products/seville-maxi-skirt-floral"
  })

outfit_boho_8 = Outfit.create(
  {
    style_id: styles[1].id,
    image: "/assets/boho_outfits/boho_dustybluemaxidress.jpg",
    text: "Dusty Blue Maxi Dress",
    link: "https://www.threebirdnest.com/collections/dresses/products/sweet-memories-button-front-maxi-dress-dusty-blue"
  })

outfit_boho_9 = Outfit.create(
  {
    style_id: styles[1].id,
    image: "/assets/boho_outfits/boho_whiteminidress.jpg",
    text: "White Mini Dress",
    link: "https://www.threebirdnest.com/collections/dresses/products/hayden-embroidered-mini-dress-cream"
  })

# CLASSIC, STYLE_ID = 2
outfit_classic_1 = Outfit.create(
    {
      style_id: styles[1].id,
      image: "/assets//",
      text: "",
      link: ""
    })






