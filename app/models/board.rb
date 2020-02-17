class Board < ApplicationRecord
  belongs_to :user
  has_many :responses
  has_many :board_category_relationships
  has_many :categories, through: :board_category_relationships

  validates :title, presence: true

  def self.search(search_keyword)
    split_keyword = search_keyword.split(/[[:blank:]]+/)
    match_keywords = []
    split_keyword.each do |keyword|
      next if keyword == "" 
      match_keywords += self.eager_load(:responses).where(['title LIKE ? OR responses.comment LIKE ?', "%#{keyword}%", "%#{keyword}%" ])
    end
    match_keywords.uniq
  end
end
