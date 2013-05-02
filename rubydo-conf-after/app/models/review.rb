class Review < ActiveRecord::Base
  attr_accessible :description, :product_id, :title

  # associations
  belongs_to :product

  # validations
  validates :description, presence: true, length: { minimum: 20 }

  validates :title, presence: true, length: { within: 2..100 }

  validates :product, associated: true

  validates :product_id, presence: true


  default_scope order("created_at ASC")
end
