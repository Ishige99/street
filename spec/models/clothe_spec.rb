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
        expect(@clothe.errors.full_messages).to include("商品画像を入力してください")
      end
      it 'nameが空' do
        @clothe.name = ''
        @clothe.valid?
        expect(@clothe.errors.full_messages).to include("商品名を入力してください")
      end
      it 'textが空' do
        @clothe.text = ''
        @clothe.valid?
        expect(@clothe.errors.full_messages).to include("商品の説明を入力してください")
      end
      it 'categoryが空' do
        @clothe.category_id = 1
        @clothe.valid?
        expect(@clothe.errors.full_messages).to include('カテゴリーを入力してください')
      end
      it 'sizeが空' do
        @clothe.size_id = 1
        @clothe.valid?
        expect(@clothe.errors.full_messages).to include('サイズを入力してください')
      end
      it 'stateが空' do
        @clothe.state_id = 1
        @clothe.valid?
        expect(@clothe.errors.full_messages).to include('商品の状態を入力してください')
      end
      it 'delivery_burdenが空' do
        @clothe.delivery_burden_id = 1
        @clothe.valid?
        expect(@clothe.errors.full_messages).to include('配送料の負担を入力してください')
      end
      it 'delivery_methodが空' do
        @clothe.delivery_method_id = 1
        @clothe.valid?
        expect(@clothe.errors.full_messages).to include('配送方法を入力してください')
      end
      it 'delivery_sourceが空' do
        @clothe.delivery_source_id = 1
        @clothe.valid?
        expect(@clothe.errors.full_messages).to include('発送元の地域を入力してください')
      end
      it 'delivery_dayが空' do
        @clothe.delivery_day_id = 1
        @clothe.valid?
        expect(@clothe.errors.full_messages).to include('発送までの日数を入力してください')
      end
      it 'priceが空' do
        @clothe.price = ''
        @clothe.valid?
        expect(@clothe.errors.full_messages).to include("販売価格を入力してください", "販売価格は不正な値です", "販売価格は数値で入力してください")
      end
      it 'priceが300円未満' do
        @clothe.price = '299'
        @clothe.valid?
        expect(@clothe.errors.full_messages).to include('販売価格は300以上の値にしてください')
      end
      it 'priceが9,999,999円より大きい' do
        @clothe.price = '10000000'
        @clothe.valid?
        expect(@clothe.errors.full_messages).to include('販売価格は9999999以下の値にしてください')
      end
      it 'priceが全角数字' do
        @clothe.price = '１００００'
        @clothe.valid?
        expect(@clothe.errors.full_messages).to include('販売価格は数値で入力してください')
      end
      it 'priceが半角英数字混合' do
        @clothe.price = '1000aaa'
        @clothe.valid?
        expect(@clothe.errors.full_messages).to include('販売価格は数値で入力してください')
      end
      it 'priceが半角英語' do
        @clothe.price = 'aaaaaa'
        @clothe.valid?
        expect(@clothe.errors.full_messages).to include('販売価格は数値で入力してください')
      end
    end
  end
end
