class Coordinator < ApplicationRecord
  has_many :registries
  has_many :participants , :through => :registries


  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :email, presence: true , uniqueness:{ case_sensitive: false,message: "email already taken" }

  validates :name, presence: true
  validates_length_of :name, minimum: 3, maximum: 16
  validates :phone_number,   :presence => {:message => 'hello you type a correct format for a phone number!'},
            :numericality => true,
            :length => { :minimum => 10, :maximum => 15 }
  end
