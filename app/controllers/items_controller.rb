class ItemsController < ApplicationController
  def index
    @items = Items.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @b_list = BList.find(params[:b_list_id])
    @item = Item.new
  end

  def edit
    @b_list = BList.find(params[:b_list_id])
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(params[:item].permit(:name, :due_date, :location))
      redirect_to b_list_path(params[:id])
    else
      render :edit
    end
  end

  def create
    b_list
    @item = @b_list.items.create(item_params)

    if @item.save
      redirect_to b_list_path(@b_list)
    else
      render :new
    end
  end



  private

  def b_list
    @b_list = BList.find(params[:b_list_id])
  end

  def item
    @item = Item.new
  end
  def item_params
    params.require(:item).permit(:name, :due_date, :location)
  end
end
