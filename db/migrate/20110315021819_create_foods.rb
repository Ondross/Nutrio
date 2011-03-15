class CreateFoods < ActiveRecord::Migration
  def self.up
    create_table :foods do |t|
      t.integer :id
      t.integer :vitamina
      t.integer :vitaminb
      t.integer :fiber

      t.timestamps
    end
  end

  def self.down
    drop_table :foods
  end
end
