require 'rails_helper'

RSpec.describe Clothe, type: :model do
  before do 
    @clothe = FactoryBot.build(:clothe)
  end

  describe '商品新規投稿' do

    context '新規投稿できるとき' do
      it '全ての情報が正しく入力されている' do
        expect(@clothe).to be_valid
      end
    end

    context '新規投稿できないとき' do
      it 'imageが空' do
        @clothe.image = nil
        @clothe.valid?
        expect(@clothe.errors.full_messages).to include("Image can't be blank")
      end
      it 'nameが空' do
        @clothe.name = ""
        @clothe.valid?
        expect(@clothe.errors.full_messages).to include("Name can't be blank")
      end
      it 'textが空' do
        @clothe.text = ""
        @clothe.valid?
        expect(@clothe.errors.full_messages).to include("Text can't be blank")
      end
      it 'categoryが空' do
        @clothe.category_id = 1
        @clothe.valid?
        expect(@clothe.errors.full_messages).to include("Category must be other than 1")
      end
      it 'sizeが空' do
        @clothe.size_id = 1
        @clothe.valid?
        expect(@clothe.errors.full_messages).to include("Size must be other than 1")
      end
      it 'stateが空' do
        @clothe.state_id = 1
        @clothe.valid?
        expect(@clothe.errors.full_messages).to include("State must be other than 1")
      end
      it 'delivery_burdenが空' do
        @clothe.delivery_burden_id = 1
        @clothe.valid?
        expect(@clothe.errors.full_messages).to include("Delivery burden must be other than 1")
      end
      it 'delivery_methodが空' do
        @clothe.delivery_method_id = 1
        @clothe.valid?
        expect(@clothe.errors.full_messages).to include("Delivery method must be other than 1")
      end
      it 'delivery_sourceが空' do
        @clothe.delivery_source_id = 1
        @clothe.valid?
        expect(@clothe.errors.full_messages).to include("Delivery source must be other than 1")
      end
      it 'delivery_dayが空' do
        @clothe.delivery_day_id = 1
        @clothe.valid?
        expect(@clothe.errors.full_messages).to include("Delivery day must be other than 1")
      end
      it 'priceが空' do
        @clothe.price = ""
        @clothe.valid?
        expect(@clothe.errors.full_messages).to include("Price can't be blank")
      end
      it 'priceが300円未満' do
        @clothe.price = "299"
        @clothe.valid?
        expect(@clothe.errors.full_messages).to include("Price must be greater than or equal to 300")
      end
      it 'priceが9,999,999円より大きい' do
        @clothe.price = "10000000"
        @clothe.valid?
        expect(@clothe.errors.full_messages).to include("Price must be less than or equal to 9999999")
      end
      it 'priceが全角数字' do
        @clothe.price = "１００００"
        @clothe.valid?
        expect(@clothe.errors.full_messages).to include("Price is not a number")
      end
      it 'priceが半角英数字混合' do
        @clothe.price = "1000aaa"
        @clothe.valid?
        expect(@clothe.errors.full_messages).to include("Price is not a number")
      end
      it 'priceが半角英語' do
        @clothe.price = "aaaaaa"
        @clothe.valid?
        expect(@clothe.errors.full_messages).to include("Price is not a number")
      end
    end
  end
end
