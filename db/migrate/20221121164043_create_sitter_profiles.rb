class CreateSitterProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :sitter_profiles do |t|
      t.string :species_preference
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
