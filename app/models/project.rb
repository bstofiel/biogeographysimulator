class Project < ActiveRecord::Base
  
  has_many :islands
  has_one :mainland
  
end
