class User < ApplicationRecord
  has_secure_password
  has_many :journals
  has_many :goals, through: :journals
  has_many :micro_goals, through: :goals

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  #validates :password, length: {in: 6..20}, presence: true, uniqueness: true

  def valid_password?
    @username
  end 

end
