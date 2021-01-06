class Goal < ApplicationRecord
    has_many :micro_goals
    has_many :resources
    belongs_to :journal
end