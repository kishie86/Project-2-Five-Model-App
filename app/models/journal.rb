class Journal < ApplicationRecord
    validates :name, presence: true
    validates :date, presence: true
    validates :title, presence: true
    validates :content, presence: true

    has_many :goals
    has_many :goals, through: :micro_goals
    belongs_to :user
end