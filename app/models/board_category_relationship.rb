class BoardCategoryRelationship < ApplicationRecord
  belongs_to :board
  belongs_to :category
end
