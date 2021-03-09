class UserPurchase
  include ActiveModel::Model 
  attr_accessor :token, :clothe_id, :user_id, :postal_code, :prefecture, :city, :address_1, :address_2, :phone_number

  with_options presence: true do
    validates :postal_code, format: { with: /\A\d{3}-\d{4}$|^\d{3}-\d{2}$|^\d{3}\z/ }
    validates :prefecture, numericality: { other_than: 1 }
    validates :city
    validates :address_1
    validates :phone_number, format: { with: /\A\d{10,11}\z/ }
    validates :token
    validates :clothe_id
    validates :user_id
  end

  def save
    history = History.create(clothe_id: clothe_id, user_id: user_id)
    Purchase.create(postal_code: postal_code, prefecture: prefecture, city: city, address_1: address_1, address_2: address_2, phone_number: phone_number, history_id: history.id)
  end

end