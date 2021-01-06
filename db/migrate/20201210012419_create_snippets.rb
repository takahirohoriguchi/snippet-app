class CreateSnippets < ActiveRecord::Migration[6.0]
  def change
    create_table :snippets do |t|
      t.string :group_name, null: false # グループ名
      t.string :info, null: false # スニペット説明
      t.references :user,  foreign_key: true # userの外部キー
      t.timestamps
    end
  end
end
