class AiresController < ApplicationController
  before_action :find_aire, only: [:show, :edit, :update, :destroy]

  def index
    @aires = Aire.all.order("created_at DESC")
  end

  def show
  end

  def new
    @aire = current_user.aires.build
    @marcas = Marca.all.map { |m| [m.nombre, m.id]  }
  end

  def create
    @aire = current_user.aires.build(aire_params)
    @aire.marca_id = params[:marca_id]
    if @aire.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @marcas = Marca.all.map { |m| [m.nombre, m.id]  }
  end

  def update
    @aire.marca_id = params[:marca_id]

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
    params.require(:aire).permit(:marca_id, :modelo_conjunto, :modelo_ui, :modelo_ue)
  end

  def find_aire
    @aire = Aire.find(params[:id])
  end


end
