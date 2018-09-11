class Petulant < ApplicationRecord
  belongs_to :whiner
  belongs_to :answer
end
