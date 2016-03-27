class Product < ActiveRecord::Base
     def index
    @products = Product.all
    @productlines = Productline.all
   end
       def show
    @products = Product.all
    @productlines = Productline.all
   end
   
def self.search(search)
  words = name.split(/\W+/)
  if search
  where('words LIKE ?', "%#{search}%")
  else
  all
 end
end  
  
  has_many :line_items
 
  before_destroy :ensure_not_referenced_by_any_line_item
  
  private
  #ensure that there are no line items referencing this product
  def ensure_not_referenced_by_any_line_item
      if line_items.empty?
          return true
     else
         errors.add(:base, 'Line Items Present')
         return false
     end
 end
end  
