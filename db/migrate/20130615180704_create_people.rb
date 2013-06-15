class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :email
      t.string :first
      t.string :last
      t.string :zip

      t.timestamps
    end
  end
end
