class Service < ApplicationRecord
has_rich_text :text
has_many :business_services 
has_many :business, through: :business_services
end
