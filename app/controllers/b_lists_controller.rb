class BListsController < ApplicationController
  def index
    @b_lists = BList.all
  end

  def show
    @b_list = BList.find(params[:id])
    @items = @b_list.items
  end

  def edit
    @b_list = BList.find(params[:id])
  end

  def update
    if @b_list.update(b_list_params)
      redirect_to b_lists_path
    else
      render :edit
    end
  end

  def new
    @b_list = BList.new
  end

  def create
    @b_list = BList.new(b_list_params)

    if @b_list.save
      redirect_to b_lists_path(@b_list)
    else
      render :new
    end
  end

  def destroy
    @b_list.destroy
    redirect_to b_lists_path
  end



  private

  def b_list_params
    params.require(:b_list).permit(:name, :date_created, :date_completed)
  end
end
