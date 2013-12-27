class User < ActiveRecord::Base
  # has_one :division
  # has_one :level
  #validates_presence_of :nik, :username, :password, :name, :email, :telp, :division_id, :level_id
  #validates_uniqueness_of :nik, :username, :email

  scope :active, lambda { where(status: 1) }
  scope :inactive, lambda { where(status: 0) }
end
