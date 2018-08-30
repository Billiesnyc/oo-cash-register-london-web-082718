class CashRegister
  
  attr_accessor :items, :discount, :total, :last_transaction
  
  def initialize(discount=0)
    @total = 0.0
    @discount = discount
    @items = [ ]
  end
  
  def add_item(title, price, quantity=1)
    @total += price * quantity 
  end

  
end
