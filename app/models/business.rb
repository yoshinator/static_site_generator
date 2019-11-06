class Business < ApplicationRecord
  has_many :leads, dependent: :destroy
  has_many :users, dependent: :destroy
  has_many :business_services, dependent: :destroy
  has_many :services, through: :business_services
  has_many :city_services, dependent: :destroy 
  has_many :cities, through: :city_services

  def not_enrolled
    Service.all.select do |service|
      !self.services.include?(service)
    end
  end 

  def available_citie
    City.all.select do |city|
      !self.cities.include?(city)
    end 
  end 
end
