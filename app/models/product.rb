class Product < ActiveRecord::Base
     def index
    @products = Product.all
    @productlines = Productline.all
   end
       def show
    @products = Product.all
    @productlines = Productline.all
   end
  
end
