class CreateBookingrooms < ActiveRecord::Migration
  def change
    create_table :bookingrooms do |t|
      t.integer :room_id
      t.integer :user_id
      t.string :meeting
      t.text :description
      t.datetime :start_time
      t.datetime :end_time
      t.integer :participant
      t.integer :status

      t.timestamps
    end
  end
end
