class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity
  def initialize(discount=0)
    @total=0
    @discount=discount
  end

  def add_item(title, price, quantity=1)
    self.total += quantity*price
  end
  
  def apply_discount(discount)
    # case discount
    #turn discount number into percentage
    percentage_discount = 1 - (discount/100).round
    case percentage_discount
    when percentage_discount != 0
      self.total * percentage_discount
    else
      self.total
    end
  end
end
