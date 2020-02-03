class CashRegister
  
  attr_accessor :total, :discount 
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @purchases = []
  end
  
  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times do
      @purchases << title
    end
  end
    
  def apply_discount
    if @ discount > 0 
      @discount = @discount/100.to_f 
    end
  end
  
end
