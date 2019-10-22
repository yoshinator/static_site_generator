class Service < ApplicationRecord
  has_many :pages, dependent: :destroy
  has_many :cities, through: :pages
  has_many :business, through: :pages
end
