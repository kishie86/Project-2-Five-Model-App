class Journal < ApplicationRecord
    has_many :goals
    has_many :goals, through: :micro_goals
    belongs_to :user
end