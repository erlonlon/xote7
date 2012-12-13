class Category < ActiveRecord::Base
  attr_accessible :nome

  validates_presence_of :nome

  has_many :posts

 
   default_scope order("nome ASC")
end
