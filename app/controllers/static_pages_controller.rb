class StaticPagesController < ApplicationController
    before_action :set_new_lead
    
    def index 
    end

    def page 

        @business = Business.find(params[:business_id])
        @service = @business.services.find(params[:service_id]) 
        @city = @business.cities.find(params[:city_id])
    end 

    def about
    end

    def septic
    end 

    def excavation
    end

    def sewer_drain
    end 

    def grease_trap
    end

    def emergency 
    end 

    def septic_browns_mill
    end 
    
    def septic_burlington 
    end 

    def septic_cinnaminson
    end 

    def septic_fort_dix
    end 

    def maple_shade
    end 

    def marlton
    end

    def medford
    end 

    def tabernacle
    end 

    def willingboro
    end 

    def camden_county
    end 

    private 
    def set_new_lead
        @lead = Lead.new()
    end 
    
end
