class Product < ActiveRecord::Base
  attr_accessible :code, :description, :name, :price

  validates :name, presence: true, uniqueness: true, length: { within: 2..100 }

  validates_numericality_of :price
  validates_presence_of :price

  validates :description, presence: true


end
