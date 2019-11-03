class LeadMailer < ApplicationMailer
  default from: 'action1septic@gmail.com'
 
  def lead_email
    @lead = params[:lead]
    mail(to: "yoanante@gmail.com", subject: 'New Junk Removal Lead From Website') if @lead.business_id == 1
    mail(to: "yoanante@gmail.com", subject: 'New Septic Lead From Website') if @lead.business_id == 2
    @lead
  end

end
