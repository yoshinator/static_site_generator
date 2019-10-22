class Business < ApplicationRecord
  has_many :leads, dependent: :destroy
  has_many :users, dependent: :destroy
end
