class HelloController < ApplicationController
  def index
   end
   def Goodbye
    @customers = Customer.all
    @products = Product.all
  end
end
