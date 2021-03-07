FactoryBot.define do
  factory :clothe do
    name { Faker::Lorem.word }
    text { Faker::Lorem.sentence }
    category_id { 7 }
    size_id { 8 }
    state_id { 5 }
    delivery_burden_id { 2 }
    delivery_method_id { 4 }
    delivery_source_id { 20 }
    delivery_day_id { 3 }
    price { '10000' }

    association :user

    after(:build) do |clothe|
      clothe.image.attach(io: File.open('public/images/本.jpg'), filename: '本.jpg')
    end
  end
end
