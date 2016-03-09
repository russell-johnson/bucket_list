class HomeController < ApplicationController
  def index
    @b_lists = BList.all 
  end
end
