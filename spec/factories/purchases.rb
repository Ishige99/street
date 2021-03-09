FactoryBot.define do
  factory :purchase do
    postal_code { '111-1111' }
    prefecture { 10 }
    address = Gimei.address
    city { address.prefecture.kanji }
    address_1 { address.city.kanji }
    address_2 { 'マンション101' }
    phone_number { '00000000000' }
    token { 'tok_abcdefghijk00000000000000000' }
  end
end
