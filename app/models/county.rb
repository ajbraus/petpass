class County < ActiveRecord::Base
  belongs_to :state
  has_many :municipalities
  attr_accessible :name, :state_id

  validates :name, presence:true

  def name_and_state
    name + ", " + state.abbr
  end
end
