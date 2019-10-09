class Lead < ApplicationRecord
  belongs_to :business
  validates :email, presence: :true

  def self.addContent(options, lead)
    business_name = Business.find(options["business_id"]).name 
    location_of_job = options["job_location"]
    time_line_of_job = options["timeline"]
    lead.content="Location: #{location_of_job}\nNeeds to get done: #{time_line_of_job}"
    lead
  end
  
end
