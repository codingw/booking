class CreateBookingcars < ActiveRecord::Migration
  def change
    create_table :bookingcars do |t|
      t.integer :car_id
      t.integer :user_id
      t.string :destination
      t.text :description
      t.datetime :start_time
      t.datetime :end_time
      t.integer :participant
      t.integer :status

      t.timestamps
    end
  end
end
