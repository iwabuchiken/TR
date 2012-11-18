class SubGenre < ActiveRecord::Base
 
  # Relation
  has_many :texts
  belongs_to :genre
  
end
