# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

red = Trainer.find_or_create_by(name: "Red")
brock = Trainer.find_or_create_by(name: "Brock")

pikachu = Specie.find_or_create_by(name: "Pikachu",base_hp: 50)
pidgey = Specie.find_or_create_by(name: "Pidgey",base_hp: 60)
rattata = Specie.find_or_create_by(name: "Rattata", base_hp: 40)
mankey = Specie.find_or_create_by(name: "Mankey", base_hp: 40)

onix = Specie.find_or_create_by(name: "Onix", base_hp: 80)
geodude = Specie.find_or_create_by(name: "Geodude", base_hp: 65)




red_Pikachu = Pokemon.find_or_create_by(level: 15, current_hp: 65, trainer_id: red.id, specie_id: pikachu.id,imgFront: "./assets/pokemons/pikachu/FRONT.gif" , imgBack: "./assets/pokemons/pikachu/BACK.gif")
red_Pidgey = Pokemon.find_or_create_by(level: 13, current_hp: 73, trainer_id: red.id, specie_id: pidgey.id,imgFront: "./assets/pokemons/pidgey/FRONT.gif" , imgBack: "./assets/pokemons/pidgey/BACK.gif")
red_Rattata = Pokemon.find_or_create_by(level: 11, current_hp: 51, trainer_id: red.id, specie_id: rattata.id,imgFront: "./assets/pokemons/rattata/FRONT.gif" , imgBack: "./assets/pokemons/rattata/BACK.gif")
red_Mankey = Pokemon.find_or_create_by(level: 12, current_hp: 52, trainer_id: red.id, specie_id: mankey.id,imgFront: "./assets/pokemons/mankey/FRONT.gif" , imgBack: "./assets/pokemons/mankey/BACK.gif")

brock_Geodude = Pokemon.find_or_create_by(level: 18, current_hp: 83, trainer_id: brock.id, specie_id: geodude.id,imgFront: "./assets/pokemons/geodude/FRONT.gif" , imgBack: "./assets/pokemons/geodude/BACK.gif")
brock_Onix = Pokemon.find_or_create_by(level: 20, current_hp: 100, trainer_id: brock.id, specie_id: onix.id,imgFront: "./assets/pokemons/onix/FRONT.gif" , imgBack: "./assets/pokemons/onix/BACK.gif")



tackle = Move.find_or_create_by(name: "Tackle", base_damage: 35)
scratch = Move.find_or_create_by(name: "Scratch", base_damage: 40)

tail_whip = Move.find_or_create_by(name: "Tail Whip",base_damage: 5)

karate_chop = Move.find_or_create_by(name: "Karate Chop", base_damage: 50)

growl=Move.find_or_create_by(name: "Growl", base_damage: 5)
thundershock=Move.find_or_create_by(name: "Thundershock", base_damage: 40)

gust = Move.find_or_create_by(name: "Gust", base_damage: 40)
sand_attack = Move.find_or_create_by(name: "Sand Attack", base_damage: 5)

rock_throw = Move.find_or_create_by(name: "Rock Throw", base_damage: 50)

screech = Move.find_or_create_by(name: "Screech", base_damage: 5)
bind = Move.find_or_create_by(name: "Bind", base_damage: 10)

defense_curl = Move.find_or_create_by(name: "Defense Curl", base_damage: 5)


PokemonMove.find_or_create_by(pokemon_id: red_Pikachu.id,move_id:tackle.id)
PokemonMove.find_or_create_by(pokemon_id: red_Pikachu.id,move_id:growl.id)
PokemonMove.find_or_create_by(pokemon_id: red_Pikachu.id,move_id:thundershock.id)

PokemonMove.find_or_create_by(pokemon_id: red_Pidgey.id,move_id:tackle.id)
PokemonMove.find_or_create_by(pokemon_id: red_Pidgey.id,move_id:sand_attack.id)
PokemonMove.find_or_create_by(pokemon_id: red_Pidgey.id,move_id:gust.id)

PokemonMove.find_or_create_by(pokemon_id: red_Rattata.id,move_id:tackle.id)
PokemonMove.find_or_create_by(pokemon_id: red_Rattata.id,move_id:tail_whip.id)
PokemonMove.find_or_create_by(pokemon_id: red_Rattata.id,move_id:scratch.id)

PokemonMove.find_or_create_by(pokemon_id: red_Mankey.id,move_id:karate_chop.id)
PokemonMove.find_or_create_by(pokemon_id: red_Mankey.id,move_id:scratch.id)
PokemonMove.find_or_create_by(pokemon_id: red_Mankey.id,move_id:tail_whip.id)

PokemonMove.find_or_create_by(pokemon_id: brock_Onix.id,move_id:bind.id)
PokemonMove.find_or_create_by(pokemon_id: brock_Onix.id,move_id:rock_throw.id)
PokemonMove.find_or_create_by(pokemon_id: brock_Onix.id,move_id:screech.id)

PokemonMove.find_or_create_by(pokemon_id: brock_Geodude.id,move_id:tackle.id)
PokemonMove.find_or_create_by(pokemon_id: brock_Geodude.id,move_id:rock_throw.id)
PokemonMove.find_or_create_by(pokemon_id: brock_Geodude.id,move_id:defense_curl.id)

