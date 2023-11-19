class UnidataController < ApplicationController
  def index
    @response = Unidatum.all 
    render json: @response
  end
end
