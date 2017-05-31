class Post < ApplicationRecord
  has_many :comments
  include PostPresenter
  
  validates :message, presence: true
end
 
