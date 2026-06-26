class Table < ApplicationRecord
  has_many :characters, dependent: :destroy

  has_many :players_tables
  has_many :players, through: :players_tables

  validates :name, :system, presence: true
end
