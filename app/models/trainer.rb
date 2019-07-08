class Trainer < ApplicationRecord
    has_many :pokemons
    # has_many :species, through: :pokemons
    has_many :species, :through => :pokemons, :source => :specie

end
