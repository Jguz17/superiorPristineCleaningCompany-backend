class CreateThrashes < ActiveRecord::Migration[6.0]
  def change
    create_table :thrashes do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :datetime
      t.string :message

      t.timestamps
    end
  end
end
