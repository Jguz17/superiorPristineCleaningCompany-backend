class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
      t.datetime :datetime
      t.string :message

      t.timestamps
    end
  end
end
