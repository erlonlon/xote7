class Gallery < ActiveRecord::Base
  attr_accessible :album, :autor, :body, :titulo, :type_id, :avatar

  validates_presence_of :titulo, :type_id
  validates_associated :type
  belongs_to :type

    has_attached_file :avatar, :styles => {:small => "1120x400#", :original => "660x400>", :medium => "300x300>", :thumb => "100x100>" }

   
   validates_attachment_presence :avatar
   
    validates_attachment_size :avatar, :less_than => 2.megabyte
   validates_attachment_content_type :avatar, :content_type => %w(image/png image/jpeg image/gif)

  
  

   default_scope order("created_at DESC")



  
end
