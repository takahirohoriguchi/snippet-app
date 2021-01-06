class CreateInputSummaries < ActiveRecord::Migration[6.0]
  def change
    create_table :input_summaries do |t|
      t.string :summary_name, null: false # 概要名
      t.references :snippet,  foreign_key: true #スニペットの外部キー
      t.timestamps
    end
  end
end
