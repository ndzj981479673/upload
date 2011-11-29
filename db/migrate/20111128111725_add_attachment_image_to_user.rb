class AddAttachmentImageToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :image_file_name, :string
    add_column :users, :image_content_type, :string
    add_column :users, :image_file_size, :integer
    add_column :users, :image_updated_at, :datetime
  #  add_column :users,:image_description,:text
    #add_column :users,:image_classification,:string
     #@t.text :description
     # t.string :classification
  end

  def self.down
    remove_column :users, :image_file_name
    remove_column :users, :image_content_type
    remove_column :users, :image_file_size
    remove_column :users, :image_updated_at
     #remove_column :users,:image_description
   # remove_column :users,:image_classification
    
  end
end
