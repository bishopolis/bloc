class Post < ActiveRecord::Base
  attr_accessible :content, :published, :published_date, :summary, :title, :uri
  
  belongs_to :author
  has_many :comments
  has_many :images
  has_many :relateds 
end
