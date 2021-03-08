class Purchase < ApplicationRecord

  with_options presence: true do
    validates :postal_code, format: { with: /\A\d{3}[-]\d{4}$|^\d{3}[-]\d{2}$|^\d{3}\z/ }
    validates :prefecture, numericality: { other_than: 1 }
    validates :city
    validates :address_1
    validates :phone_number, format: { with: /\A\d{10,11}\z/ }
  end

end
