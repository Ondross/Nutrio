class CreatePurchases < ActiveRecord::Migration
  def self.up
    create_table :purchases do |t|
      t.string :user
      t.datetime :date
      t.integer :bananas
      t.integer :peaches
      t.integer :kiwis

      t.timestamps
    end
  end

  def self.down
    drop_table :purchases
  end
end
