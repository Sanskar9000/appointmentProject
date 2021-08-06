class AddNameNumberToDoctors < ActiveRecord::Migration[6.1]
  def change
    add_column :doctors, :firstname, :string
    add_column :doctors, :lastname, :string
    add_column :doctors, :mobile, :string, unique: true 
  end
end
