class Stepsnippet < ActiveRecord::Base
  attr_accessible :body, :given_when_then

  validates :body,:presence => true
end
