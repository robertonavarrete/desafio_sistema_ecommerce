class Product < ApplicationRecord
    has_and_belongs_to_many :categories
    has_many :order_items
    has_many :stocks

    def available?
        available = false
        stocks.each do |stock|
            available = true if stock.quantity > 0
        end
        return available
    end
end
