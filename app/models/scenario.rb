class Scenario < ActiveRecord::Base
  attr_accessible :body, :feature_id,:steps_attributes,:id,:_destroy
  belongs_to :feature
  has_many :steps
  accepts_nested_attributes_for :steps,allow_destroy: true,reject_if: lambda{ |a| a[:body].blank? }

  validates :body,:presence => true
end
