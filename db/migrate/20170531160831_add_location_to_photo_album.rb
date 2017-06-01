class AddLocationToPhotoAlbum < ActiveRecord::Migration[5.1]
  def change
    add_column :photo_albums, :location, :string
  end
end
