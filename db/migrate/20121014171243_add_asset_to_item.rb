class AddAssetToItem < ActiveRecord::Migration
  def change
    add_attachment :items, :asset
  end
end
