class Group < ApplicationRecord
  has_many :memberships
  has_many :users, through: :memberships

  validates_uniqueness_of :title
end
