class AddNameNumberAddressToPatients < ActiveRecord::Migration[6.1]
  def change
    add_column :patients, :firstname, :string
    add_column :patients, :lastname, :string
    add_column :patients, :mobile, :string , unique: true
    add_column :patients, :address, :string
  end
end
