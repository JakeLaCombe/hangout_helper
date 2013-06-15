class Person < ActiveRecord::Base
  attr_accessible :email, :first, :last, :zip
end
