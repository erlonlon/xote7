class Post < ActiveRecord::Base
  attr_accessible :autor, :body, :cidade, :data_evento, :descricao, :email,
   :local, :titulo, :url, :category_id
    belongs_to :category

    default_scope order("created_at DESC")


end
