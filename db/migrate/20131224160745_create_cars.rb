class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :police_number
      t.string :merk
      t.integer :capacity
      t.integer :driver_id

      t.timestamps
    end
  end
end
