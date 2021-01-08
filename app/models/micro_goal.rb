class MicroGoal < ApplicationRecord
    validates :deadline, presence: true
    validates :content, presence: true
    validates :goal_id, presence: true
    
    belongs_to :goal
    validates :deadline, presence: true
    validates :content, presence: true
end