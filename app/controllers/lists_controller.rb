class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @bookmark = Bookmark.new
    @lists = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new
    @list.save
    redirect_to lists_path(@lists)
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

end
