class Course < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true, length: {minimum:10, maximum:255}
  def to_s
    title
  end

  has_rich_text :description
end
