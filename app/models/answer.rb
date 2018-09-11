class Answer < ApplicationRecord
  belongs_to :whiner
  belongs_to :whine
end
