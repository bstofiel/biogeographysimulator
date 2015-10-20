class CreateMainlands < ActiveRecord::Migration
  def change
    create_table :mainlands do |t|
      t.string :name
      t.integer :project_id
      t.integer :number_of_species

      t.timestamps null: false
    end
  end
end
