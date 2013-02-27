class Related < ActiveRecord::Base
  belongs_to :post
  attr_accessible :uri
end
