class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :species
      t.string :picture
      t.references :garden, null: false, foreign_key: true

      t.timestamps
    end
  end
end
