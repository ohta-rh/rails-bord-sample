class Comment < ActiveRecord::Base
  belongs_to :bord
  attr_accessible :body, :name

  validates	:name,	:presence => true
  validates	:body,		:presence => true
end
