class Step < ActiveRecord::Base
  attr_accessible :body, :given_when_then, :position, :scenario_id
  belongs_to :scenario
  
  default_scope order('position')
  validates :body,:presence => true
end
