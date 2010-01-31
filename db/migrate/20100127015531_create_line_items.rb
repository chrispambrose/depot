class CreateLineItems < ActiveRecord::Migration
  def self.up
    create_table :line_items do |t|
      t.integer :product_id, :null => false, :options => "CONSTRAINT fk_line_item_products REFERNCES products(id)"
      t.integer :order_id, :null => false, :options => "CONSTRAINT fk_line_item_orders REFERNCES orders(id)"
      t.integer :quanity, :null => false
      t.decimal :total_price, :null => false, :precision => 8, :scale => 2

      t.timestamps
    end
  end

  def self.down
    drop_table :line_items
  end
end
