class AiresController < ApplicationController
  def index
  end

  def new
    @aire = Aire.new
  end

  def create
    @aire = Aire.new(params[:aire])
  end

  


end
