class Post < ApplicationRecord
 include PostPresenter
  
  validates :message, presence: true

end
