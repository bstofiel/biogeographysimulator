class CreateIslands < ActiveRecord::Migration
  def change
    create_table :islands do |t|
      t.string :name
      t.integer :project_id
      t.integer :width
      t.integer :length
      t.integer :distance

      t.timestamps null: false
    end
  end
end
