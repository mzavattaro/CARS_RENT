class Car < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :bookings, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  include PgSearch
  pg_search_scope :search_by_address,
    against: [ :address ],
    using: {
      tsearch: { prefix: true } 
    }
end
