class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nik
      t.string :username
      t.string :password
      t.string :name
      t.string :email
      t.integer :division_id
      t.integer :level_id
      t.text :address
      t.string :telp
      t.string :status

      t.timestamps
    end
  end
end
