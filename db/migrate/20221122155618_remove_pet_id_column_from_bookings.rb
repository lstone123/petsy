class RemovePetIdColumnFromBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :pet_id
  end
end
