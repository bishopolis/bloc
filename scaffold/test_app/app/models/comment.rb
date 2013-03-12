class Comment < ActiveRecord::Base
  attr_accessible :content, :email, :name, :website
  belongs_to :post
end
