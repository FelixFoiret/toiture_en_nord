class EstimationsController < ApplicationController
  def index
    @estimations = Estimation.all
  end

  def new
    @estimation = Estimation.new
  end

  def create
    @estimation = Estimation.new(estimation_params)
    @estimation.user = current_user
    if @estimation.save
      redirect_to estimation_path(@estimation)
    else
      render :new
    end
  end

  def edit
    @estimation = Estimation.find(params[:id])
  end

  def update
    @estimation = Estimation.find(params[:id])
    @estimation.update(estimation_params)
    redirect_to estimation_path(@estimation)
  end

  private

  def estimation_params
    params.require(:estimation).permit(:thematic, :description, :address)
  end

end
