class CashRegister
    attr_accessor :total, :discount, :items, :last_item

    def initialize discount = 0
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item title, price, quantity = 1
        quantity.times do 
        self.items << title
        end
        self.last_item =  price*quantity
        self.total = total + self.last_item

    end

    def apply_discount
        if self.discount != 0
        discount_percentage= (100-self.discount.to_f)/100
        self.total = (self.total*discount_percentage).to_i
        return "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total = total - last_item
    end 
end
