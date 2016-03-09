class ItemsController < ApplicationController
  before_action :b_list, only: [:new, :create, :destroy]
  before_action :item, only: [:destroy, :edit, :update, :show]
  def index
    @items = Items.all
  end

  def show
  end

  def new
    @item = Item.new
  end

  def edit
    @b_list = BList.find(params[:b_list_id])
  end

  def update
    if @item.update(params[:item].permit(:name, :due_date, :location))
      redirect_to b_list_path(params[:b_list_id])
    else
      render :edit
    end
  end

  def create

    @item = @b_list.items.create(item_params)

    if @item.save
      redirect_to b_list_path(@b_list)
    else
      render :new
    end
  end

  def destroy
    @item.destroy
    redirect_to b_list_path(@b_list)
  end


  private
  def item
    @item = Item.find(params[:id])
  end

  def b_list
    @b_list = BList.find(params[:b_list_id])
  end

  def item_params
    params.require(:item).permit(:name, :due_date, :location)
  end
end
