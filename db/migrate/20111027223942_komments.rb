class Komments < ActiveRecord::Migration
  def self.up
    create_table :komments do |t|
      t.text :body
      t.integer :parent_id
      t.integer :user_id
      t.integer :kommented_id
      t.string :kommented_type
      
      t.timestamps
    end
  end

  def self.down
    drop_table :komments
  end
end
