class AddImgPathToDoctors < ActiveRecord::Migration[6.1]
  def change
    add_column :doctors, :img_path, :string
  end
end
