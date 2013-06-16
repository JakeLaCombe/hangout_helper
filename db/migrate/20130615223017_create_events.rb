class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :street
      t.string :city
      t.string :zip
      t.timestamp :time

      t.timestamps
    end
  end
end
