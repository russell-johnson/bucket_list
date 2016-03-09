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
