class ReceptionsController < ApplicationController
  def index
    @receptions = Reception.order(id: :asc)
  end

  def show
    @reception = Reception.find(params[:id])
  end

  def new
    @reception = Reception.new
  end

  def create
    reception = Reception.create!(reception_params)
    redirect_to reception
  end

  def edit
  end

  def update
  end

  def destroy
    reception = Reception.find(params[:id])
    reception.destroy!
    redirect_to root_path
  end

  private

  def reception_params
    params.require(:reception).permit(:name, :arrive, :leave)
  end
end
