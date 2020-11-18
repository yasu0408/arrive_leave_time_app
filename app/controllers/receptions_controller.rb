class ReceptionsController < ApplicationController
  before_action :set_reception, only: %i[show edit update destroy]

  def index
    @receptions = Reception.order(id: :asc)
  end

  def show
  end

  def new
    @reception = Reception.new
  end

  def create
    @reception = Reception.new(reception_params)
    if @reception.save
      redirect_to @reception, notice: "とうこうしました"
    else
      flash.now[:alert] = "とうこうにしっぱいしました"
      render :new
    end
  end

  def edit
  end

  def update
    if @reception.update(reception_params)
      redirect_to @reception, notice: "こうしんしました"
    else
      flash.now[:alert] = "こうしんにしっぱいしました"
      render :edit
    end
  end

  def destroy
    @reception.destroy!
    redirect_to root_path, alert: "さくじょしました"
  end

  private

  def set_reception
    @reception = Reception.find(params[:id])
  end

  def reception_params
    params.require(:reception).permit(:name, :arrive, :leave)
  end
end
