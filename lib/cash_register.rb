class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
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

# cr = CashRegister.new(20)
# cr.add_item("macbook air", 1000)
# cr.apply_discount
# puts cr.total

# cr = CashRegister.new
# cr.add_item("eggs", 1.99)
# cr.add_item("tomato", 1.76, 3)
# puts cr.items

cr = CashRegister.new()
cr.add_item("apple", 0.99)
cr.add_item("tomato", 1.76)
cr.void_last_transaction
puts cr.total
