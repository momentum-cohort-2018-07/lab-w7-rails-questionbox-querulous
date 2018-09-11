class Whine < ApplicationRecord
  belongs_to :whiner
  has_many :answers
  has_many :clarifiers
end
