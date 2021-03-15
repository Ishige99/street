# :shirt:STREET
### 服に特化したフリマアプリケーション
<img width="1437" alt="7e8b6cd9fc1f2c83d4a1eee5f0e7d624" src="https://user-images.githubusercontent.com/75163604/111097015-0fab6480-8584-11eb-8318-a8380b29db69.png">

# :file_folder:概要
### 気軽に服を出品でき、購入することができる
ジャンルやサイズ、品質などの状態から検索することができ、様々な人のニーズに合うようにしました。また、商品についても編集や削除、コメントを残すことができるようにしているのでより柔軟な商品出品ができます。

# :globe_with_meridians:App URL
https://street-app.herokuapp.com/









# データベース設計

## users テーブル
| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| nickname           | string  | null: false |
| email              | string  | null: false |
| encrypted_password | string  | null: false |
| surname            | string  | null: false |
| first_name         | string  | null: false |
| surname_kana       | string  | null: false |
| first_name_kana    | string  | null: false |
| sex_id             | integer | null: false |
| birthday           | date    | null: false |
### Association
- has_many :clothes
- has_many :histories
- has_many :comments

## clothes テーブル
| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| name               | string     | null: false                    |
| text               | text       | null: false                    |
| category_id        | integer    | null: false                    |
| size_id            | integer    | null: false                    |
| state_id           | integer    | null: false                    |
| delivery_burden_id | integer    | null: false                    |
| delivery_method_id | integer    | null: false                    |
| delivery_source_id | integer    | null: false                    |
| delivery_day_id    | integer    | null: false                    |
| price              | integer    | null: false                    |
| user               | references | null: false, foreign_key: true |
### Association
- belongs_to :user
- has_one :history
- has_many :comments

## histories テーブル
| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| clothe | references | null: false, foreign_key: true |
### Association
- belongs_to :clothe
- belongs_to :user
- has_one :purchase

## purchases テーブル
| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| postal_code  | string     | null: false                    |
| prefecture   | integer    | null: false                    |
| city         | string     | null: false                    |
| address_1    | string     | null: false                    |
| address_2    | string     |                                |
| phone_number | string     | null: false                    |
| history      | references | null: false, foreign_key: true |
### Association
- belongs_to :history

## comments テーブル
| Column | Type       | Options                        |
| ------ |----------- | ------------------------------ |
| text   | text       | null: false                    |
| user   | references | null: false, foreign_key: true |
| clothe | references | null: false, foreign_key: true |
### Association
- belongs_to :user
- belongs_to :clothe