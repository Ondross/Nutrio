class AddQuantToPurchases < ActiveRecord::Migration
  def self.up
    add_column :purchases, :food, :string
    add_column :purchases, :quantity, :integer
  end

  def self.down
    remove_column :purchases, :quantity
    remove_column :purchases, :food
  end
end
