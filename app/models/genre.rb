class Genre < ActiveRecord::Base
  
  # Relation
  has_many :texts
  has_many :sub_genres

end
