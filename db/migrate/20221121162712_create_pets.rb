class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.text :description
      t.string :species
      t.integer :age
      t.string :requirements
      t.string :name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
