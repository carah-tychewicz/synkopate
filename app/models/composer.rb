class Composer < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :upbeats
  has_many :repertoires
end
