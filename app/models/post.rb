class Post < ApplicationRecord
  has_many :comments
  include PostPresenter

  validates :message, presence: true

  def local_time_stamp
    self.created_at.localtime.strftime('%H:%M')
  end

  def local_date_stamp
    self.created_at.localtime.strftime('%d/%m/%Y')
  end
end
