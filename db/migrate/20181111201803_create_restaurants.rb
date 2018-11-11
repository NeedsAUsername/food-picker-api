class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :yelpNumber
      t.string :UserId
      t.boolean :allow_unauth

      t.timestamps
    end
  end
end
