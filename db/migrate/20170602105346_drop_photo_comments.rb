class DropPhotoComments < ActiveRecord::Migration[5.1]
  def change
    drop_table :photo_comments
  end
end
