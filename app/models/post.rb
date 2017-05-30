class Post < ApplicationRecord
  has_many :comments
  include PostPresenter
end
 
