class CashRegister
    attr_accessor :total, :discount, :items, :recent_transaction


    def initialize (discount = 0)
        @total = 0 
        @discount = discount
        @items = []
    end

    def add_item (title,price, quantity = 1)
        @recent_transaction = price * quantity
        @total += recent_transaction
        quantity.times do
            items << title
        end
    end

    def apply_discount 
        if @discount != 0
            discount_Value = 1-(discount/100.0)
            @total = (@total * discount_Value).to_i
            "After the discount, the total comes to $#{@total}."
        else 
            @total 
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total -= recent_transaction
    end

end