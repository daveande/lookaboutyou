class Guide < ActiveRecord::Base
  
  belongs_to :neighborhood
  has_many :entries
  has_many :todos, :through => :entries

end
