class Image < ActiveRecord::Base
  attr_accessible :image
  belongs_to :post
end
