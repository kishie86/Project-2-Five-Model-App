class MicroGoal < ApplicationRecord
    belongs_to :goal
    validates :deadline, presence: true
    validates :content, presence: true
end