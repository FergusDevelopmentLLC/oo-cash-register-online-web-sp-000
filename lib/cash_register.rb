class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.total = self.total + (price * quantity)
  end

  def apply_discount
    if self.discount > 0
      self.total = self.total.to_f * (self.discount.to_f / 100)
    end
  end

end

# cr = CashRegister.new
# puts cr.total
#
# cr = CashRegister.new(20)
# puts cr.discount

# cr = CashRegister.new
# puts cr.add_item("eggs", 0.98)

# cr = CashRegister.new
# cr.add_item("book", 5.00, 3)
# puts cr.total

# cr = CashRegister.new
# cr.add_item("eggs", 1.99)
# cr.add_item("tomato", 1.76, 3)
# puts cr.items

# cr = CashRegister.new()
# cr.add_item("apple", 0.99)
# puts cr.total
# cr.add_item("tomato", 1.76)
# cr.void_last_transaction
# puts cr.total

cr = CashRegister.new(20)
cr.add_item("macbook air", 1000)
cr.apply_discount
puts cr.total
