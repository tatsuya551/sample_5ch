class Category < ApplicationRecord
  has_many :board_category_relationships
  has_many :boards, through: :board_category_relationships
end
