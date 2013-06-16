class AddAvatarToUsers < ActiveRecord::Migration
  def self.up
  	drop_attached_file :people, :avatar
  end

  def self.down
	drop_attached_file :people, :avatar
  end
end
