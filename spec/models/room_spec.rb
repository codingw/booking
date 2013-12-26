require 'spec_helper'

describe Room do
  #check column exit in table
  it { should have_db_column(:name) }
  it { should have_db_column(:capacity) }

  #validate
  it{ should validate_presence_of(:name) }
  it{ should validate_uniqueness_of(:name) }
  it{ should validate_presence_of(:capacity) }
end
