class Page < ActiveRecord::Base
  acts_as_list :scope => "position"
  
  def self.roots
    Page.where("parent_id is null").order('position')
  end
  
  def children
    Page.where("parent_id = ?", self.id).order('position')
  end
  
end
