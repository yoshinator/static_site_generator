class Lead < ApplicationRecord
  belongs_to :business
  validates :email, presence: :true
  attr_writer :content

  def addContent(options)
    business_name = Business.find(options["business_id"]).name 
    location_of_job = options["job_location"]
    time_line_of_job = options["timeline"]
    self.content = "Location: #{location_of_job}\nNeeds to get done: #{time_line_of_job}"
  end
  
end
