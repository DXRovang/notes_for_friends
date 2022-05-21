class CreateFriends < ActiveRecord::Migration[6.1]
  def change
    create_table :friends do |t|
      t.string :name, array: true

      t.timestamps
    end
  end
end