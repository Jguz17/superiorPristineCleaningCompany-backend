class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.integer :user_id
      t.string :name
      t.string :email
      t.string :phone
      t.string :content
      t.datetime :datetime, :default => nil

      t.timestamps
    end
  end
end
