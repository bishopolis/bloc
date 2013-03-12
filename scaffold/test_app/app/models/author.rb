class Author < ActiveRecord::Base
  attr_accessible :bio, :email, :linkedin, :name, :twitter, :website
  
  belongs_to :blog
  has_many :posts
end
