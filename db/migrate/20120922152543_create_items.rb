class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :japanese_name
      t.string :english_name
      t.integer :quantity_produced
      t.float :scale_mini
      t.float :scale_full
      t.float :width
      t.float :length
      t.float :height
      t.decimal :price
      t.string :currency
      t.string :jan_code
      t.string :gtin_code
      t.string :upc_code
      t.text :description

      t.timestamps
    end
  end
end
