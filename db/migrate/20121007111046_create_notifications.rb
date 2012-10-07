class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.string :sender
      t.string :receiver
      t.string :type
      t.timestamps
    end
  end
end
