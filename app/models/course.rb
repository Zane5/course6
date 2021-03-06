class Course < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true, length: { minimun: 3, maximum: 500 }

  has_rich_text :description
  belongs_to :user

  def to_s
    title
  end
end
