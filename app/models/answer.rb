class Answer < ApplicationRecord
  belongs_to :whiner
  belongs_to :whine
  has_many :petulants
end
