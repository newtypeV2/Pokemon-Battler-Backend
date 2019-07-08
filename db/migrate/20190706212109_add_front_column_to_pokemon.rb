class AddFrontColumnToPokemon < ActiveRecord::Migration[5.2]
  def change
    add_column :pokemons, :imgFront, :string
  end
end
