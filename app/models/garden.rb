class Garden < ApplicationRecord
  validates :name, presence: true
  validates :picture, presence: true
end
