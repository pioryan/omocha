class AddProductCodesToItem < ActiveRecord::Migration
  def change
    add_column :items, :ean_code, :string
    add_column :items, :sku_code, :string
    add_column :items, :manufacturer_number, :string
  end
end
