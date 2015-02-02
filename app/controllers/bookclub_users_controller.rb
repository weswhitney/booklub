class BookclubUsersController < ApplicationController
  before_action do
    @bookclub = Bookclub.find(params[:bookclub_id])
  end

  def index
    @bookclub_users = @bookclub.bookclub_users.all
    @bookclub_user = @bookclub.bookclub_users.new
  end

  def create
    @bookclub_user = @bookclub.bookclub_users.new(bookclub_user_params)
    if @bookclub.save
      redirect_to bookclub_path(@bookclub)
    else
      render :index
    end
  end

  private

  def bookclub_user_params
    params.require(:bookclub_user).permit(:role, :bookclub_id, :user_id)
  end

end
