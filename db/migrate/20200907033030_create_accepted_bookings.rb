class CreateAcceptedBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :accepted_bookings do |t|
      t.integer :user_id
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
      t.string :datetime
      t.string :message

      t.timestamps
    end
  end
end
