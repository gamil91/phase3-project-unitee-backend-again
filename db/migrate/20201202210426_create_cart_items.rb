class CreateCartItems < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_items do |t|
      t.integer :quantity
      t.string :color
      t.string :size
      t.integer "purchase_id", optional: true
      t.references :item, null: false, foreign_key: true
      t.integer "cart_id", optional:true

      t.timestamps
    end
  end
end
