class CreateSpecies < ActiveRecord::Migration[5.2]
  def change
    create_table :species do |t|
      t.string :name
      t.integer :base_hp

      t.timestamps
    end
  end
end
