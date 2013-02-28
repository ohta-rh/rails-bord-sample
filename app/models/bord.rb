class Bord < ActiveRecord::Base
  attr_accessible :title

  has_many :comments
  validates :title, :presence => true
end
