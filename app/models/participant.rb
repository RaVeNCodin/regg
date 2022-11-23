class Participant < ApplicationRecord
  has_many :registries
  has_many :coordinators, :through => :registries
  validates_length_of :name, minimum: 3, maximum: 16
end
