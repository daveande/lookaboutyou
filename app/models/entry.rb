class Entry < ActiveRecord::Base
  
  belongs_to :todo
  belongs_to :guide
  
end
