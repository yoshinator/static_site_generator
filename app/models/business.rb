class Business < ApplicationRecord
  has_many :pages, dependent: :destroy
  has_many :services, dependent: :destroy
  has_many :cities, dependent: :destroy
  has_many :leads, dependent: :destroy
  has_many :users, dependent: :destroy
end
