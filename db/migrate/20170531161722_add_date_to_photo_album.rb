class AddDateToPhotoAlbum < ActiveRecord::Migration[5.1]
  def change
    add_column :photo_albums, :date, :datetime
  end
end
