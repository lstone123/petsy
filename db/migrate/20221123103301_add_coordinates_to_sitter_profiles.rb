class AddCoordinatesToSitterProfiles < ActiveRecord::Migration[7.0]
  def change
    add_column :sitter_profiles, :latitude, :float
    add_column :sitter_profiles, :longitude, :float
  end
end
