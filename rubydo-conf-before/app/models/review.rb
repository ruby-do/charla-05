class Review < ActiveRecord::Base
  attr_accessible :description, :product_id, :title
end
