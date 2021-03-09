class CreateHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :histories do |t|
      t.references :user,     foreign_key: true
      t.references :purchase, foreign_key: true
   ## t.references :clothe, foreign_key: true を上記の項目を削除してmysqlから追加 
      t.timestamps
    end
  end
end
