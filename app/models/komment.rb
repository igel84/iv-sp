class Komment < ActiveRecord::Base
  belongs_to :user
  belongs_to :kommented, :polymorphic => true
end
