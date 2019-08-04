class Repertoire < ApplicationRecord
  belongs_to :composer, optional: true
  has_many :upbeats
end
