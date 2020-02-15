class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.bigint     :user_id, foreign_key: true, null: false
      t.bigint     :board_id, foreign_key: true, null: false
      t.string     :comment, null: false
      t.timestamps
    end
  end
end
