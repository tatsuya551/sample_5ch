class ChangeTypeIntToStringCategories < ActiveRecord::Migration[5.2]
  def change
    change_column :categories, :content, :string
  end
end
