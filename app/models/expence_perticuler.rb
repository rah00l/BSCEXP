class ExpencePerticuler < ActiveRecord::Base
  belongs_to :expence
  #accepts_nested_attributes_for :expence, :allow_destroy => true, :reject_if => :all_blank
  attr_accessible :id
end
