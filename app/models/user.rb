class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable
  has_one :division
  has_one :level
  validates_presence_of :nik, :username, :password, :name, :email, :telp, :division_id, :level_id
  validates_uniqueness_of :nik, :username, :email
end
