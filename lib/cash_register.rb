class CashRegister
  
  attr_accessor :total, :discount, :purchases 
  
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
    
  def apply_discount()
    if @discount > 0 
      @discount = @discount/100.to_f 
      @total = @total - (@total * @discount)
      "After the discount, the total comes to $#{@total.to_i}."
    else @discount <= 0
      "There is no discount to apply."
    end
  end
  
  def items
    @purchases 
  end
  
  def void_last_transaction
    @total -= @total
  end
end
