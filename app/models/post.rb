class Post < ApplicationRecord
  has_many :comments

  include DateTimePresenter

  validates :message, presence: true

  def local_time_stamp
    print_time_stamp(self.created_at.localtime)
  end

  def local_date_stamp
    print_date_stamp(self.created_at.localtime)
  end
end
