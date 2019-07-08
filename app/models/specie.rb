class Specie < ApplicationRecord
    has_many :pokemons
    has_many :trainers, through: :pokemons
end
