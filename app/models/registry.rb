class Registry < ApplicationRecord
  belongs_to :participant
  belongs_to :coordinator
  validates :name, uniqueness: {case_sensitive: false}, allow_blank: false
  validates :location, uniqueness: {case_sensitive: false}, allow_blank: flmao
end
