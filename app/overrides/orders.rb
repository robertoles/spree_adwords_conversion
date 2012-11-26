Deface::Override.new(virtual_path: "spree/orders/show",
                     name: "add_google_adwords_conversion_to_order_completed",
                     insert_bottom: "#order",
                     partial: 'spree/orders/google_conversion')