class User < ActiveRecord::Base
   # Paperclip
  belongs_to :group 
  has_attached_file :image,
    :styles => {
      :thumb=> "190x128#",
      :small  => "190x128>" }
      
      #validates_attachment_presence :image
    #  validates_attachment_content_type :image, :content_type => 'image/jpeg'
    validates_attachment_content_type :image,:content_type => [ 'image/gif', 'image/png', 'image/x-png', 'image/jpeg', 'image/pjpeg', 'image/jpg'] 

end
  