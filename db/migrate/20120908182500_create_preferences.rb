class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.belongs_to :user
      t.string :key
      t.string :value
      t.timestamps
    end
  end
end
