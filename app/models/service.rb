class Service < ApplicationRecord
has_rich_text :text
has_many :business_services , dependent: :destroy
has_many :businesses, through: :business_services
end
