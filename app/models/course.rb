class Course < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true, length: {minimum:10}
  has_rich_text :description
  belongs_to :user
  extend FriendlyId
  friendly_id :title, use: :slugged
  # for randomly generated slug use this, e.g for transactional which we must protect user data
  # friendly_id :generated_slug, use: :slugged

  # def generated_slug
  #   require 'securerandom'
  #   @random_slug ||= persisted? ? friendly_id : SecureRandom.hex(4)
  # end

  def to_s
    title
  end

  def to_trix_html
    description
  end
end
