class Cart < ActiveRecord::Base
    has_many :line_items, dependent: :destroy

    def add_product(product_id)
        current_item = line_items.find_by_product_id(product_id)
        if current_item
            current_item.quantity += 1
        else
            current_item = line_items.build(product_id: product_id)
    end
        current_item
    end

    def update_product(item_id, item_quantity)
        current_item = line_items.find_by_id(item_id)
        if current_item
            current_item.quantity = item_quantity
        end
        current_item
    end
end
