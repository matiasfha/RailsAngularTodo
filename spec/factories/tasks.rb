# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    description {Faker::Lorem.paragraph}
    priority {Faker::Number.digit}
    due_date Time.now
    completed [false,true].sample
  end
end
