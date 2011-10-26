class UserAddSaltKey < ActiveRecord::Migration
  def self.up
    add_column :users, :salt_key, :string
    add_column :users, :salted, :boolean, :default => false
  end

  def self.down
    remove_column :users, :salt_key
    remove_column :users, :salted    
  end
end
