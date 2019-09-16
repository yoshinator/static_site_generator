class Page < ApplicationRecord
  has_many :services
  has_many :cities
  belongs_to :business
end
