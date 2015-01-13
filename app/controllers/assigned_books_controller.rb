class AssignedBooksController < ApplicationController

  def new
    @bookclub = Bookclub.find(params[:bookclub_id])
    @assigned_book = AssignedBook.new
  end

  def create
    @assigned_book = AssignedBook.new(params.require(:assigned_book).permit(:book_id))
    @assigned_book.save
    redirect_to bookclub_path(params[:bookclub_id])
  end

end
