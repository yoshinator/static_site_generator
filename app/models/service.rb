class Service < ApplicationRecord
  has_many :pages, dependent: :destroy
  has_many :cities, through: :pages
  belongs_to :business
end
