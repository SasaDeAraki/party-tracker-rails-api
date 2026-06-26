class Player < ApplicationRecord
  has_many :characters, dependent: :destroy

  has_many :players_table
  has_many :tables, through: :players_table

  validates :nome, presence: true
end
