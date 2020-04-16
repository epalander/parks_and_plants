class Plant < ApplicationRecord
  belongs_to :garden

  validates :species, presence: true
  validates :picture, presence: true
end
