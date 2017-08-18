class Reservation < ApplicationRecord
  belongs_to :flat
  belongs_to :user

  validates :starting, :final, :flat, :user, presence: true
end
