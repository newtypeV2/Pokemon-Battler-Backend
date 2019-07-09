class AddMaxHpToPokemons < ActiveRecord::Migration[5.2]
  def change
    add_column :pokemons, :max_hp, :integer
  end
end
