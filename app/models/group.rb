class Group < ActiveRecord::Base
   validates :name, :uniqueness => true
    has_many :users , :dependent => :destroy
    accepts_nested_attributes_for :users,:allow_destroy => true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
    
     before_destroy :ensure_not_referenced_by_any_group
     
     
private
  # ensure that there are no line items referencing this product
  def ensure_not_referenced_by_any_group
          if users.empty?
              return true
          else
            errors.add(:base, 'users present')
              return false
          end
  end

end
