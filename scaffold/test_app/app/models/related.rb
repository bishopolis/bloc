class Related < ActiveRecord::Base
  attr_accessible :uri

  belongs_to :post
end
