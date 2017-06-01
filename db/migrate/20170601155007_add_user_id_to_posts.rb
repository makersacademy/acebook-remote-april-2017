class AddUserIdToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :userid, :string
  end
end
