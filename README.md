# :shirt:STREET
### 服に特化したフリマアプリケーション
<img width="1437" alt="7e8b6cd9fc1f2c83d4a1eee5f0e7d624" src="https://user-images.githubusercontent.com/75163604/111097015-0fab6480-8584-11eb-8318-a8380b29db69.png">


# :file_folder:概要
### 気軽に服を出品でき、購入することができる
ジャンルやサイズ、品質などの状態から検索することができ、様々な人のニーズに合うようにしました。また、商品についても編集や削除、コメントを残すことができるようにしているのでより柔軟な商品出品ができます。


# :globe_with_meridians:App URL
https://street-app.herokuapp.com/

# :computer:利用方法
#### `トップページから新規登録・ログイン`  
#### `一覧画面へ遷移する`  
#### `商品出品は左上にある「出品」の文字をクリック`  
#### `商品出品後は一覧画面へ戻る`  
![demo]https://gyazo.com/99948f1b61d55d9b02017c91d17b4d18
![demo]https://gyazo.com/4de6d75d6ecb8cdfbd7f0c276af9a268

#### `一覧画面から１つの商品を選択 → 商品詳細画面へ遷移する`  
#### `出品者本人であれば商品を編集・削除できる`  


#### `ログインしているユーザーであれば商品詳細画面からコメントができる`  
#### `(コメントは購入者と出品者がコミュニケーションをとるため)`  


#### `ログインしているユーザーであれば商品を購入できる`  
#### `購入後は一覧画面へ戻る`  


#### `一覧画面の左上の「検索」をクリック → 商品検索ページへ遷移`  
#### `ジャンルを選んで検索することができる`  


#### `一覧画面の右上の「自身のユーザー名」をクリック → 自身のユーザー情報が確認できる`  
#### `ユーザー情報を編集することができる`  


#### `トップページからログアウト`  
 

 # :key:課題解決
| ユーザーストーリーから考える課題 | 課題解決 |
| -------------------------- | --------|
| 情報を入力する時、時間をあまりかけたくなくスムーズに入力したいという課題 | 入力欄のほとんどに入力例を配置し、入力方法を調べなくても全ての情報を正しく入力できるようにする |
| ページ移動にストレスを感じやすいという課題 | 全てのページにヘッダーを用意し、トップページに戻ることができる。さらに２つ以上ページ遷移している場合は、1つ前のページに戻ることができる |
| 正しく情報を入力できなかったとき、どのように情報を修正すれば良いかわからない課題 | 全てのフォームでエラーメッセージが表示されるようにし、エラーメッセージは全て日本語に翻訳し、ユーザーが見やすいようにする |
| 購入された商品がわかり辛い課題 | 購入された商品は全てのページで「SOLD OUT」が表示され、わかりやすいように赤色の画像を使うようにする |
| 送料は出品者負担なのか購入者負担なのかわかり辛い課題 | 商品詳細画面の値段の隣に（送料込）か（送料別）と表示し、一目でわかるようにする |
| 商品の画像を出品する前にもう一度確認したい課題 | 商品出品時の画像を選択した時、非同期通信で画像を表示し、どのような画像か確認できるようにする |
| 商品に関する情報をより細かく知りたい課題 | コメント機能をつけ出品者と購入者がコミュニケーションを取ることができるようにする |
| 好みの商品を探したい課題 | 検索機能をつけユーザー好みの条件で検索ができるようにする |


# :pouch:機能一覧
| 機能                | 概要                                                      |
| ------------------ | --------------------------------------------------------- |
| ユーザー管理機能      | 新規登録・ログイン・ログアウトが可能                            |
| 商品出品機能         | 画像付きで商品投稿が可能                                      |
| 商品詳細表示機能      | 各商品詳細が詳細ページで閲覧可能                               |
| 商品投稿編集・削除機能 | 出品者本人のみが商品編集・削除が可能                            |
| 商品購入機能         | ログイン中のユーザーのみ商品購入が可能                          |
| ユーザー詳細表示機能  | ログイン中のユーザーでアカウント本人であればプロフィールの閲覧が可能 |
| ユーザー情報編集機能  | ログイン中のユーザーでアカウント本人であればプロフィール編集が可能   |
| コメント機能         | 商品詳細ぺージからログイン中のユーザーのみコメントが可能           |
| 商品検索機能         | カテゴリーを選択して商品を検索することが可能                     |


# :speech_balloon:コメント機能
| 特徴                            | 概要                                                                                          |
| ------------------------------ | -------------------------------------------------------------------------------------------- |
| 商品内容とコメント欄の位置関係      | コメント欄を商品詳細ページの下に配置することによって、商品の詳細をしっかり見た上でコメントができる            |
| ログイン中のユーザーのみコメント可能 | 誰でもコメントできるよりも購買意欲のある会員のみがコメントできるようにすることによって、限定感を出す          |
| コメント欄を残す                  | 商品が購入された後もコメント欄を残すことによって、その商品についてどのような会話がされたか確認することができる  |
| 商品と連動                       | 商品を削除するとコメントも全て削除される                                                            |
| 空欄だとコメントすることができない   | 間違ってコメントしてしまうことと、余分な処理が行われることを防ぐことが可能                                |


# :mag_right:商品検索機能
| 特徴     | 概要                                                       |
| ------- | ---------------------------------------------------------- |
| 検索方式 | 「指定しない」を選択した場合、選択した部分を除いたような検索結果になる |
| 検索欄   | 3の欄を配置し、ユーザーの好みによってより詳しく検索できることが可能   |


# :moneybag:商品購入機能概要
| 特徴      | 概要                                              |
| -------- | ------------------------------------------------ |
| 商品の表示 | 購入された商品は全てのページで「SOLD OUT」が表示される   |
| 商品の詳細 | 購入された商品は商品の証拠を残すため、編集も削除もできない |


# :closed_lock_with_key:セキュリティー
| 特徴           | 概要                                                                    |
| ------------- | ----------------------------------------------------------------------- |
| ページ遷移の制限 | 出品・購入・編集など、ログイン中のユーザーしか遷移することができないページをログインしていないユーザーがURLを入力して遷移しようとすると、ログインページへ遷移する |
| ユーザー確認    | 編集・削除など、URLを入力して行おうとした場合、出品者本人でなければトップページへ戻る |


# :pencil2:追加予定機能
- 非同期通信でのいいね機能
- アプリケーションの通知機能
- APIを使用して様々なサービスからログインできる機能



# ローカル環境での動作確認
% git clone https://github.com/Ishige99/street.git  
% cd global-day  
% bundle install  
% rails db:create  
% rails db:migrate  
% rails s  
:point_right:http://localhost:3000


# 開発環境
- Visual Studio Code
- Ruby 2.6.5
- Rails 6.0.3.5
- mysql2 0.5.3
- JavaScript
- gem 3.2.12
- heroku 7.50.0


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