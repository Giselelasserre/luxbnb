class Flat < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :reserved_users, through: :reservations, class_name: "User", source: "user"
  belongs_to :owner, class_name: "User", foreign_key: "user_id"

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end




  # def reservations
  #   Reservation.where(flat_id: self.id)
  # end
