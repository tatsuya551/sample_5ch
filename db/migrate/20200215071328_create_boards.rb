class CreateBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :boards do |t|
      t.bigint     :user_id, foreign_key: true, null: false
      t.string     :title, null: false
      t.timestamps
    end
  end
end
