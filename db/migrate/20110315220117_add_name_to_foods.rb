class AddNameToFoods < ActiveRecord::Migration
  def self.up
    add_column :foods, :name, :string
  end

  def self.down
    remove_column :foods, :name
  end
end
