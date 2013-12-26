# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :room do

    trait :firefox do 
      name 'Firefox'
      capacity 9
    end

    trait :chrome do 
      name 'Chrome'
      capacity 9
    end

    trait :ie do 
      name 'internet explorer'
      capacity 9
    end

  end
end
