class Page < ApplicationRecord
  belongs_to :services
  belongs_to :cities
  belongs_to :business
end
