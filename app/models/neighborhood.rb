class Neighborhood < ActiveRecord::Base
  
  has_many :users
  has_many :todos
  has_many :guides
  
  
end
