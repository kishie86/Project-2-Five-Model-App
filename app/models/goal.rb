class Goal < ApplicationRecord
    has_many :micro_goals
    has_many :resources
    belongs_to :journal

    validates :name, presence: true
    validates :description, presence: true
end