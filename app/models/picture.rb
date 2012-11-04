class Picture < ActiveRecord::Base
  attr_accessible :title, :url, :favorite
  has_many :comments
  validates_presence_of :url
  
end
