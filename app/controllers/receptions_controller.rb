class ReceptionsController < ApplicationController
  def index
    user = User.new
    @my_introduce = user.introduce
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
  end

  private

  def reception_params
    params.require(:reception).permit(:name, :arrive, :leave)
  end
end
