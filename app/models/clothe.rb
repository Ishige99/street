class Clothe < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :user

  belongs_to :category
  belongs_to :size
  belongs_to :state
  belongs_to :delivery_burden
  belongs_to :delivery_method
  belongs_to :delivery_source 
  belongs_to :delivery_day
  has_one_attached :image

  with_options presence: true do
    validates :image
    validates :name
    validates :text
    with_options numericality: { other_than: 1 } do
      validates :category_id
      validates :size_id
      validates :state_id
      validates :delivery_burden_id
      validates :delivery_method_id
      validates :delivery_source_id
      validates :delivery_day_id
    end
    validates :price, format: { with: /\A[0-9]+\z/ }, numericality: { :greater_than_or_equal_to => 300, :less_than_or_equal_to => 9999999 }
  end

end
