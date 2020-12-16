class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount = nil)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        @last_transaction = price * quantity
        self.total += @last_transaction
        quantity.times do
            @items << title
        end
    end

    def apply_discount
        if @discount == nil
           "There is no discount to apply."
        else
            self.total = @total.to_i - @total.to_i * @discount.to_i/100
            "After the discount, the total comes to $#{@total}."
        end
    end

    def void_last_transaction
        self.total = @total.to_f - @last_transaction.to_f 
    end
end
