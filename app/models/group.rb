class Group < ActiveRecord::Base
  attr_accessible :name, :zip, :owner_id
  has_many :people
  has_many :events

  validates :name, presence: true
  validates :zip, presence: true
end
