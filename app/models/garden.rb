class Garden < ApplicationRecord
  has_many :plants

  validates :name, presence: true
  validates :picture, presence: true
end
