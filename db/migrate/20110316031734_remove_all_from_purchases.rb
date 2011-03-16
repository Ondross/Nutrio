class RemoveAllFromPurchases < ActiveRecord::Migration
  def self.up
    remove_column :purchases, :bananas
    remove_column :purchases, :peaches
    remove_column :purchases, :kiwis
  end

  def self.down
    add_column :purchases, :kiwis, :integer
    add_column :purchases, :peaches, :integer
    add_column :purchases, :bananas, :integer
  end
end
