class Room < ActiveRecord::Base
  validates_presence_of :name, :capacity
  validates_uniqueness_of :name
end
