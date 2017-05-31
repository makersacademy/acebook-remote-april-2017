class Post < ApplicationRecord
  has_many :comments
  include DateTimePresenter

  validates :message, presence: true
end
