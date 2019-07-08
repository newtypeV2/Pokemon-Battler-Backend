class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.integer :trainer_id
      t.integer :specie_id
      t.integer :level
      t.integer :current_hp
      t.timestamps
    end
  end
end
