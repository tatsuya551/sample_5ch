class RenameContentIdToContentCategories < ActiveRecord::Migration[5.2]
  def change
    rename_column :categories, :content_id, :content
  end
end