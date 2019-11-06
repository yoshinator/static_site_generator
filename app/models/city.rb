class City < ApplicationRecord

  has_many :city_services , dependent: :destroy
  has_many :businesses, through: :city_services

  scope :state, -> (state) { where state: state }
  scope :county, -> (county) { where county: county }
  scope :starts_with, -> (name) { where("name like ?", "#{name}%")}
end
