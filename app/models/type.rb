class Type < ActiveRecord::Base
  attr_accessible :nome

  has_many :galleries

  default_scope order("nome ASC")
end
