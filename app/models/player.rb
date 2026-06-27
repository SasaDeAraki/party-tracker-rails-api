class Player < ApplicationRecord
  has_many :characters, dependent: :destroy
  has_many :tables, through: :characters

  validates :name, presence: true
end
