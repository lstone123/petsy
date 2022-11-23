class AddAddressToSitterProfile < ActiveRecord::Migration[7.0]
  def change
    add_column :sitter_profiles, :address, :string
  end
end
