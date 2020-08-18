class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.integer :user_id
      t.string :name
      t.integer :lat
      t.integer :lng

      t.timestamps
    end
  end
end
