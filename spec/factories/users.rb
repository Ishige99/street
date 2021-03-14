FactoryBot.define do
  factory :user do
    nickname { Faker::Name.last_name }
    email { Faker::Internet.free_email }
    password = '1Aa' + Faker::Internet.password(min_length: 6, max_length: 12)
    password { password }
    password_confirmation { password }
    gimei = Gimei.name
    surname { gimei.last.kanji }
    first_name { gimei.first.kanji }
    surname_kana { gimei.last.katakana }
    first_name_kana { gimei.first.katakana }
    sex_id { 'female' }
    birthday { Faker::Date.birthday(min_age: 18, max_age: 75) }
  end
end
