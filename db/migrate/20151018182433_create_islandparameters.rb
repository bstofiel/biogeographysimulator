class CreateIslandparameters < ActiveRecord::Migration
  def change
    create_table :islandparameters do |t|
      t.string :name
      t.integer :user_id
      t.integer :number_of_species
      t.integer :island_width
      t.integer :island_length
      t.integer :number_of_islands
      t.integer :distance_from_mainland
      t.integer :number_of_generations

      t.timestamps null: false
    end
  end
end
