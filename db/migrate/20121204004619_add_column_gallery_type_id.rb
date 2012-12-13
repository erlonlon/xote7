class AddColumnGalleryTypeId < ActiveRecord::Migration
 
def change

	add_column :galleries, :type_id , :integer

 end
end
