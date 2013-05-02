class Product < ActiveRecord::Base

  include ActionView::Helpers::NumberHelper
  include ActionView::Helpers::TextHelper
  attr_accessible :code, :description, :name, :price

  # associations
  has_many :reviews

  # validations
  # Post ruby 1.9 and new hash syntax
  validates :name, presence: true, uniqueness: true, length: { within: 2..100 }

  validates_numericality_of :price
  validates_presence_of :price

  validates :description, presence: true, length: { minimum: 20 }

  # scopes
  default_scope order('created_at DESC')

  scope :pricy, where("price >= ?", 40)

  def self.search(query)
    if query.blank?
      scoped
    else
      q = "%#{query}%"
      where("name like ? or description like ?", q, q)
    end

  end


  def reviews_count
    pluralize(reviews.count, "Review")
  end

  def product_header
    code + ' - ' + name
  end

  def humanize_price
    number_to_currency(price, :presicion => 2 )
  end


end
