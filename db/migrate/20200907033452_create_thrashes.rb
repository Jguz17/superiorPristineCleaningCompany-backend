class CreateThrashes < ActiveRecord::Migration[6.0]
  def change
    create_table :thrashes do |t|
      t.integer :user_id
      t.string :name
      t.string :email
      t.string :phone
      t.string :address, :defailt => nil
      t.string :datetime, :defailt => nil
      t.string :content
      t.string :type

      t.timestamps
    end
  end
end
