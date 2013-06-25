class State < ActiveRecord::Base
  attr_accessible :abbr, :name
  has_many :counties

  validates :name, :abbr, presence:true
end
