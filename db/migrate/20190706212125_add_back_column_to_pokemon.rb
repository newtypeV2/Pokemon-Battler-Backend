class AddBackColumnToPokemon < ActiveRecord::Migration[5.2]
  def change
    add_column :pokemons, :imgBack, :string
  end
end
