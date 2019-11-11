class BlocksController < ApplicationController

  private 

  def blocks_params 
    params.require(:block).permit(:title, :text, :img_url)
  end 
end
