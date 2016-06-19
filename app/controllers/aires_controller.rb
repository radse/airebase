class AiresController < ApplicationController
  before_action :find_aire, only: [:show, :edit, :update, :destroy]

  def index
    @aires = Aire.all.order("created_at DESC")
  end

  def show
  end

  def new
    @aire = current_user.aires.build
  end

  def create
    @aire = current_user.aires.build(aire_params)
    if @aire.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @aire.update(aire_params)
      redirect_to aire_path(@aire)
    else
      render 'edit'
    end
  end

  def destroy
    @aire.destroy
    redirect_to root_path
  end


  private

  def aire_params
    params.require(:aire).permit(:marca, :modelo_conjunto, :modelo_ui, :modelo_ue)
  end

  def find_aire
    @aire = Aire.find(params[:id])
  end


end
