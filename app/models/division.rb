class Division < ActiveRecord::Base
  validates :name, :description, presence: true
  validates_uniqueness_of :name
end
