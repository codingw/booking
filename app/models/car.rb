class Car < ActiveRecord::Base
  has_one :user
  validates_presence_of :police_number, :merk, :capacity, :driver_id
  validates_uniqueness_of :police_number, :driver_id
end
