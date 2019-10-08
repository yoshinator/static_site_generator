class StaticPagesController < ApplicationController

    def index 
        @lead = Lead.new()
    end
    
end
