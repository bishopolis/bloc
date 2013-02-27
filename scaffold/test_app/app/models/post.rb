class Post < ActiveRecord::Base
  belongs_to :author
  attr_accessible :body, :published, :published_date, :summary, :title, :uri
end
