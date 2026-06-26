class PlayersTables < ApplicationRecord
  belongs_to :player
  belongs_to :table
end
