class Business < ApplicationRecord
  has_many :pages
  has_many :services, through: :pages
  has_many :cities, through: :pages
  has_many :leads
  has_many :users
end
