class BookclubsController < ApplicationController

  def index
    @bookclubs = Bookclub.all
  end

  def new
    @bookclub = Bookclub.new
  end

  def create
    @bookclub = Bookclub.new(params.require(:bookclub).permit(:name ))
    @bookclub.save
    redirect_to @bookclub, notice: 'Bookclub was successfully created'
  end

  def show
    @bookclub = Bookclub.find(params[:id])
  end

  def edit
    @bookclub = Bookclub.find(params[:id])
  end

  def update
    @bookclub = Bookclub.find(params[:id])
    @bookclub.update(params.require(:bookclub).permit(:name ))
    redirect_to @bookclub, notice: 'Bookclub was successfully updated'
  end

  def destroy
    @bookclub = Bookclub.find(params[:id])
    @bookclub.destroy
    redirect_to bookclubs_path, notice: 'Bookclub was successfully deleted'
  end

end
