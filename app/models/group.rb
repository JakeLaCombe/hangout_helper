class Group < ActiveRecord::Base
  attr_accessible :name, :zip
  has_many :persons
  has_many :events
  has_one :group_owner, through: persons
end
