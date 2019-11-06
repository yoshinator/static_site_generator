class CityService < ApplicationRecord
  belongs_to :business
  belongs_to :city
end
