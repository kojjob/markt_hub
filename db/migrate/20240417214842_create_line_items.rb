class CreateLineItems < ActiveRecord::Migration[7.1]
  def change
    create_table :line_items do |t|
      t.string :name
      t.integer :quantity
      t.decimal :price, precision: 5, scale: 2
      t.references :cart, null: false, foreign_key: true
      t.references :order, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
