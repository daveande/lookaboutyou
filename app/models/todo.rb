class Todo < ActiveRecord::Base
  
  belongs_to :neighborhood
  has_many :entries
  has_many :guides, :through => :entries
  
end
