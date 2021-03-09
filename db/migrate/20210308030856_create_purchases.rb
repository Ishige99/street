class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.string :postal_code,  null: false
      t.integer :prefecture,  null: false
      t.string :city,         null: false
      t.string :address_1,    null: false
      t.string :address_2
      t.string :phone_number, null: false
      ## t.references :history,  foreign_key: true 追加
      t.timestamps
    end
  end
end