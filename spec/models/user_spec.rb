require 'spec_helper'

describe User do
  #check column exit in table
  it { should have_db_column(:nik) }
  it { should have_db_column(:username) }
  it { should have_db_column(:name) }
  it { should have_db_column(:email) }
  it { should have_db_column(:level_id) }
  it { should have_db_column(:division_id) }

  #validate
  it{ should validate_presence_of(:nik) }
  it{ should validate_uniqueness_of(:nik) }
  it{ should validate_presence_of(:username) }
  it{ should validate_uniqueness_of(:username) }
end
