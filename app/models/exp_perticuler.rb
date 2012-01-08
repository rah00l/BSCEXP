class ExpPerticuler < ActiveRecord::Base
  has_many :exps
  accepts_nested_attributes_for :exps, :allow_destroy => :false
  #:reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }

end
