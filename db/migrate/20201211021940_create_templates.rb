class CreateTemplates < ActiveRecord::Migration[6.0]
  def change
    create_table :templates do |t|
      t.string :title, null: false # タイトル名
      t.text :info, null: false # 情報名
      t.references :input_summary,  foreign_key: true #スニペットの外部キー
      t.timestamps
    end
  end
end
