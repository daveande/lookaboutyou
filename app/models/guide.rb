class Guide < ActiveRecord::Base
  
  belongs_to :neighborhood
  has_many :todos, :through => :entries
  
end
