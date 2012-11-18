class Text < ActiveRecord::Base
  
  # Relation
  has_many :word_sets
  belongs_to :genre
  belongs_to :sub_genre
  belongs_to :lang
  
end
