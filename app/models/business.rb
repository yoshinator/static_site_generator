class Business < ApplicationRecord
  has_many :leads, dependent: :destroy
  has_many :users, dependent: :destroy
  has_many :business_services, dependent: :destroy
  has_many :services, through: :business_services

  def not_enrolled
    Service.all.select do |service|
      !self.services.include?(service)
    end
  end 
end
