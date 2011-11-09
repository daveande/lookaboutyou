class Neighborhood < ActiveRecord::Base
  
  has_many :bars
  has_many :cafes
  has_many :learns
  has_many :users
  has_many :todos
  has_many :guides
  
  
end
