class Blog < ActiveRecord::Base
  attr_accessible :blog_name, :logo_location, :password, :username
  has_many :authors
end
