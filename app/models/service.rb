class Service < ApplicationRecord
has_many :blocks, dependent: :destroy
accepts_nested_attributes_for :blocks, reject_if: proc { |att| att['heading'].blank?}, allow_destroy: true
has_many :business_services , dependent: :destroy
has_many :businesses, through: :business_services
end
