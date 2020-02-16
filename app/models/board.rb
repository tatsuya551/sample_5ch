class Board < ApplicationRecord
  belongs_to :user
  has_many :responses
  has_many :board_category_relationships
  has_many :categories, through: :board_category_relationships

  validates :title, presence: true
end
