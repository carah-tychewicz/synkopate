class Repertoire < ApplicationRecord
  belongs_to :composer
  has_many :upbeats
end
