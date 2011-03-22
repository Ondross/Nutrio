class CreateNutrients < ActiveRecord::Migration
  def self.up
    create_table :nutrients do |t|
      t.string :nutrient
      t.string :food
      t.integer :quantity

      t.timestamps
    end
  end

  def self.down
    drop_table :nutrients
  end
end
