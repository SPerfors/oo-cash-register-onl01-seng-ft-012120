class CashRegister
  
  attr_accessor :total, :discount 
  
  def initialize(total = 0, discount = 0)
    @total = total
    @discount = discount
  end
  
  def add_item(title, price, quantity = 0)
    self.total = price * quantity
    @total << self.total 
  end
    
    
  
end
