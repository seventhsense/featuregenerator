class Feature < ActiveRecord::Base
  attr_accessible :body,:name,:scenarios_attributes
  has_many :scenarios
  accepts_nested_attributes_for :scenarios,allow_destroy: true,reject_if: lambda{ |a| a[:body].blank? }

  validates :name,:presence => true
end
