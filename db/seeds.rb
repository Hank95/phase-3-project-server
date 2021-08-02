puts "🌱 Seeding spices..."

# Seed your database here

pool = BarGameType.create(game_type: "Pool", description: "Pool, covering numerous pocket billiards games generally played on six-pocket tables of 7-, 8-, 9-, or 10-foot length, including among others eight-ball (the world's most widely played cue sport), nine-ball (the dominant professional game), ten-ball, straight pool (the formerly dominant pro game), one-pocket, and bank pool")
darts = BarGameType.create(game_type: "Darts", description: "Darts or dart-throwing is a competitive sport in which two or more players bare-handedly throw small sharp-pointed missiles known as darts at a round target known as a dartboard. [2] Darts players are sometimes termed 'dartists'.[3]" )
shuffleboard = BarGameType.create(game_type: "Shuffleboard", description:"The great bar game of table shuffleboard was first played in the pubs of 15th century England. Table shuffleboard eventually made its way to the U.S. and gained popularity during the early 20th century, reaching its peak back in the 1940’s. More recently, the game of table shuffleboard has made a comeback in dive bars, brew pubs and game rooms across the country.")
foosball = BarGameType.create(game_type: "Foosball", description: "The aim of the game is to move the ball into the opponent's goal by manipulating rods which have figures attached. Although rules often vary by country and region when the game is played casually, at the competitive level table soccer is played according to a unified code.")
arcade = BarGameType.create(game_type: "Arcade",  description: "Pinball, Pacman, Skeeball, or any other coin-op game")

50.times do
    bar = Bar.create(
        name: Faker::Company.name,
        description: Faker::Lorem.sentence,
        rating: rand(1..10),
        city: Faker::Address.city,
        latitude: Faker::Address.latitude,
        longitude: Faker::Address.longitude)

    Game.create(bar_id: bar.id, bar_game_type_id: rand(1..5), amount: rand(1..7))


end


puts "✅ Done seeding!"
