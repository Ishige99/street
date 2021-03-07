require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できるとき' do
      it '全てが正しい情報で入力されている' do
        expect(@user).to be_valid
      end
    end

    context '新規登録できないとき' do
      it 'nicknameが空' do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      it 'emailが空' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end
      it 'passwordが空' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end
      it 'password_confirmationが空' do
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
      it 'surnameが空' do
        @user.surname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Surname can't be blank")
      end
      it 'first_nameが空' do
        @user.first_name = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("First name can't be blank", 'First name is invalid')
      end
      it 'surname_kanaが空' do
        @user.surname_kana = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Surname kana can't be blank", 'Surname kana is invalid')
      end
      it 'first_name_kanaが空' do
        @user.first_name_kana = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("First name kana can't be blank", 'First name kana is invalid')
      end
      it 'sex_idが空' do
        @user.sex_id = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Sex can't be blank")
      end
      it 'birthdayが空' do
        @user.birthday = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Birthday can't be blank")
      end
      it 'emailに@が存在しない' do
        @user.email = 'aaaaaaaaa'
        @user.valid?
        expect(@user.errors.full_messages).to include
      end
      it '重複したemailが存在している' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(@user.errors.full_messages).to include
      end
      it 'passwordが5文字以下' do
        @user.password = '11AAa'
        @user.valid?
        expect(@user.errors.full_messages).to include
      end
      it 'passwordが半角でない' do
        @user.password = '11ＡＡａａ'
        @user.valid?
        expect(@user.errors.full_messages).to include
      end
      it 'passwordが半角英字のみ' do
        @user.password = '111111'
        @user.valid?
        expect(@user.errors.full_messages).to include
      end
      it 'passwordが半角数字のみ' do
        @user.password = 'AaAaAa'
        @user.valid?
        expect(@user.errors.full_messages).to include
      end
      it 'passwordに半角英字大文字がない' do
        @user.password = '111aaa'
        @user.valid?
        expect(@user.errors.full_messages).to include
      end
      it 'surnameが全角でない' do
        @user.surname = 'yamada'
        @user.valid?
        expect(@user.errors.full_messages).to include
      end
      it 'first_nameが全角でない' do
        @user.first_name = 'tarou'
        @user.valid?
        expect(@user.errors.full_messages).to include
      end
      it 'surname_kanaが全角カナでない' do
        @user.surname_kana = '山田'
        @user.valid?
        expect(@user.errors.full_messages).to include
      end
      it 'first_name_kanaが全角カナでない' do
        @user.first_name_kana = '太郎'
        @user.valid?
        expect(@user.errors.full_messages).to include
      end
    end
  end
end
