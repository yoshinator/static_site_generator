class City < ApplicationRecord
  has_many :pages, dependent: :destroy
  has_many :services, through: :pages
  belongs_to :business
end
