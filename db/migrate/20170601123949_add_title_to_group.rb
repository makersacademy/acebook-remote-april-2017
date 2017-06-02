class AddTitleToGroup < ActiveRecord::Migration[5.1]
  def change
    add_column :groups, :title, :string
  end
end
