class Author < ActiveRecord::Base
  attr_accessible :bio, :email, :linkedin, :name, :twitter, :website
end
