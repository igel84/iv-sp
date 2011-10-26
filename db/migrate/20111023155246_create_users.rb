class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.timestamps
      
      t.string :username, :limit => 64, :null => false
      t.string :email, :limit => 128, :null => false
      t.string :phone, :limit => 50
      t.boolean :sex
      t.text :address
      t.string :hashed_password, :limit => 64
      t.boolean :enabled, :default => true, :null => false
      t.text :profile
      t.datetime :last_login_at
    end
    add_index :users, :username
  end

  def self.down
    drop_table :users
  end
end
