class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.text :owner_message
      t.text :sitter_message
      t.date :start_date
      t.date :end_date
      t.boolean :confirmed
      t.boolean :completed
      t.references :user, null: false, foreign_key: true
      t.references :sitter_profile, null: false, foreign_key: true
      t.references :pet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
