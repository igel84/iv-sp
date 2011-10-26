class AddRoleAlias < ActiveRecord::Migration
  def self.up
    add_column :roles, :alias, :string
    
    r = Role.find(1)
    r.alias = "Администратор"
    r.save
  end

  def self.down
    remove_column :roles, :alias
  end
end
