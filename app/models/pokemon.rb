class Pokemon < ApplicationRecord
  belongs_to :trainer
  belongs_to :specie
  has_many :pokemon_moves
  has_many :moves, through: :pokemon_moves
end
