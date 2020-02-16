class CreateBoardCategoryRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :board_category_relationships do |t|
      t.bigint     :board_id, foreign_key: true, null: false
      t.bigint     :category_id, foreign_key: true, null: false
      t.timestamps
    end
  end
end
