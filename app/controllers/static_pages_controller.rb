class StaticPagesController < ApplicationController
    before_action :set_new_lead
    
    def index 
    end

    def about
    end

    def septic
    end 

    def excavation
    end
    

    private 

    def set_new_lead
        @lead = Lead.new()
    end 
    
end
