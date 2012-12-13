class AddAvatarToGallery < ActiveRecord::Migration
  def change
 
    
     add_column :galleries, :avatar_file_name, :string
    add_column :galleries, :avatar_content_type, :string
    add_column :galleries, :avatar_file_size, :integer
    add_column :galleries, :avatar_updated_at, :datetime
  end


 
end
