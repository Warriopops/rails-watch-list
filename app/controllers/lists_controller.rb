class ListsController < ApplicationController
  def index()
    @lists = List.all
  end
  def show()
    @list = List.find(params[:id])
  end
  def new()
    @list = List.new
  end
  def create
    @list = List.new(list_params)
    @list.save
    redirect_to list_path(@list)
  end
  def edit()
    @list = List.find(params[:id])
  end
  def update
    @list = List.find(params[:id])
    @list.update(list_params)
    redirect_to list_path(@list)
  end
  def destroy
    @list = List.find(params[:id])
    @list.destroy
    # No need for app/views/restaurants/destroy.html.erb
    redirect_to lists_path, status: :see_other
  end


  private

def list_params
  params.require(:list).permit(:title, :details)
end

end
