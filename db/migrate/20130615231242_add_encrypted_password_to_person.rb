class AddEncryptedPasswordToPerson < ActiveRecord::Migration
  def change
    add_column :persons, :encrypted_password, :string
  end

  def down
    remove_column :persons, :encrypted_password, :string
  end
end
