class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true # needed to remove uniqueness: true for it to work.
  # validate :custom_method @ 34 minutes 

  has_secure_password
  has_many :journals
  has_many :goals, through: :journals
  has_many :micro_goals, through: :goals
  
  #  validates :username, presence: true, uniqueness: true

  # def valid_password?
  #   @username
  # end 

end
