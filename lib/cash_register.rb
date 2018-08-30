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

  def apply_discount
    if @discount > 1 
      @total *= @discount / 100
      puts "After the discount, the total comes to #{@total}"
    else
      puts "There is no discount to apply."
    end
  end
  
end
