class Character < ApplicationRecord
  belongs_to :player
  belongs_to :table

  validates :name, :character_class, presence: true
  validates :hp, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
