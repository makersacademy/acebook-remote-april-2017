class CreateComments < ActiveRecord::Migration[5.1]
  def change
    drop_table :comments

    create_table :comments do |t|
      t.string "commenter"
      t.text "body"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.references :commentable, polymorphic: true, index: true
      t.timestamps
    end
  end
end
