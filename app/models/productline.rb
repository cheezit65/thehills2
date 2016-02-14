class Productline < ActiveRecord::Base
      @products = Product.all
      @productlines = Productline.all
end
