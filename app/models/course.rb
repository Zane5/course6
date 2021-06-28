class Course < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true, length: { minimun: 3, maximum: 500 }

  def to_s
    title
  end
end
