class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :clothes
  has_many :hisotries
  has_many :comments

  enum sex_id: { male: 0, female: 1, other: 2 }

  with_options presence: true do
    validates :nickname
    validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?\d)\w{6,12}\z/ }, length: { minimum: 6 }
    with_options format: { with: /\A[ぁ-んァ-ン一-龥]/ } do
      validates :surname
      validates :first_name
    end
    with_options format: { with: /\A[ァ-ヶー－]+\z/ } do
      validates :surname_kana
      validates :first_name_kana
    end
    validates :sex_id
    validates :birthday
  end
end
