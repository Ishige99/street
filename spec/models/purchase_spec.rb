require 'rails_helper'

RSpec.describe Purchase, type: :model do
  before do
    @purchase = FactoryBot.build(:purchase)
  end

  describe '商品購入' do

    context '購入できるとき' do
      it '全ての情報が正しく入力されている' do
        expect(@purchase).to be_valid
      end
      it 'address_2が空' do
        @purchase.address_2 = ""
        expect(@purchase).to be_valid
      end
    end

    context '購入できないとき' do
      it 'posta_codeが空' do
        @purchase.postal_code = ""
        @purchase.valid?
        expect(@purchase.errors.full_messages).to include("Postal code can't be blank", "Postal code is invalid")
      end
      it 'prefectureが空' do
        @purchase.prefecture = 1
        @purchase.valid?
        expect(@purchase.errors.full_messages).to include("Prefecture must be other than 1")
      end
      it 'cityが空' do
        @purchase.city = ""
        @purchase.valid?
        expect(@purchase.errors.full_messages).to include("City can't be blank")
      end
      it 'address_1が空' do
        @purchase.address_1 = ""
        @purchase.valid?
        expect(@purchase.errors.full_messages).to include("Address 1 can't be blank")
      end
      it 'tokenが空' do
        @purchase.token = ""
        @purchase.valid?
        expect(@purchase.errors.full_messages).to include("Token can't be blank")
      end
      it 'postal_codeにハイフンがない' do
        @purchase.postal_code = "1111111"
        @purchase.valid?
        expect(@purchase.errors.full_messages).to include("Postal code is invalid")
      end
      it 'postal_codeが全角数字' do
        @purchase.postal_code = "１１１-１１１１"
        @purchase.valid?
        expect(@purchase.errors.full_messages).to include("Postal code is invalid")
      end
      it 'postal_codeのハイフンより前の数字が３文字より少ない' do
        @purchase.postal_code = "11-1111"
        @purchase.valid?
        expect(@purchase.errors.full_messages).to include("Postal code is invalid")
      end
      it 'postal_codeのハイフンより後の数字が２文字より少ない' do
        @purchase.postal_code = "111-1"
        @purchase.valid?
        expect(@purchase.errors.full_messages).to include("Postal code is invalid")
      end
      it 'phone_numberが１０桁より少ない' do
        @purchase.phone_number = "111111111"
        @purchase.valid?
        expect(@purchase.errors.full_messages).to include("Phone number is invalid")
      end
      it 'phone_numberが１１桁より多い' do
        @purchase.phone_number = "11111111111"
        @purchase.valid?
        expect(@purchase.errors.full_messages).to include()
      end
      it 'phone_numberにハイフンがある' do
        @purchase.phone_number = "111-1111111"
        @purchase.valid?
        expect(@purchase.errors.full_messages).to include("Phone number is invalid")
      end
      it 'phone_numberが英数字混合' do
        @purchase.phone_number = "111aaaa1111"
        @purchase.valid?
        expect(@purchase.errors.full_messages).to include("Phone number is invalid")
      end

    end
  end
end
