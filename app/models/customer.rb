class Customer < ActiveRecord::Base
   def index
    @customers = Customer.all
   end
  
end
