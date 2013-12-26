# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do

    trait :admin do 
      nik 'KMK-001'
      username 'admin'
      name 'admin'
      email 'admin@kmkonline.co.id'
      level_id 1
    end

    trait :ga do
      nik 'KMK-002'
      username 'ga'
      name 'ga'
      email 'ga@kmkonline.co.id'
      level_id 2
    end

    trait :employee do
      nik 'KMK-003'
      username 'employee'
      name 'employee'
      email 'employee@kmkonline.co.id'
      level_id 3
    end

    trait :receptionist do
      nik 'KMK-004'
      username 'receptionist'
      name 'receptionist'
      email 'receptionist@kmkonline.co.id'
      level_id 4
    end

    trait :driver do
      nik 'KMK-005'
      username 'driver'
      name 'driver'
      email 'driver@kmkonline.co.id'
      level_id 5
    end

    division_id 1
    password 'secretlah'
    telp '0938982'
    address 'jakarta'

  end
end
