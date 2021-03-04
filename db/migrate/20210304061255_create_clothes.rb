class CreateClothes < ActiveRecord::Migration[6.0]
  def change
    create_table :clothes do |t|
      t.string :name,                null: false
      t.text :text,                  null: false
      t.integer :category_id,        null: false
      t.integer :size_id,            null: false
      t.integer :state_id,           null: false
      t.integer :delivery_burden_id, null: false
      t.integer :delivery_method_id, null: false
      t.integer :delivery_source_id, null: false
      t.integer :delivery_day_id,    null: false
      t.integer :price,              null: false
      t.references :user,            foreign_key: true
      t.timestamps
    end
  end
end
