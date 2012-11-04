class Comment < ActiveRecord::Base
  attr_accessible :comment, :picture_id
  belongs_to :picture
  
end
