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
  
end
