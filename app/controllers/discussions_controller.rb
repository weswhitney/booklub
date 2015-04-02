class DiscussionsController < ApplicationController

  before_action do
    @bookclub = Bookclub.find(params[:bookclub_id])
    @assigned_book = AssignedBook.find(params[:assigned_book_id])
  end

  def create
    @discussion = @assigned_book.discussions.new(params.require(:discussion).permit(:discussion, :assigned_book_id, :bookclub_user_id))
    @discussion.bookclub_user_id = current_user.id
    if @discussion.save
      redirect_to bookclub_assigned_book_path(@bookclub, @assigned_book), notice: 'discussion saved'
    else
      redirect_to bookclub_assigned_book_path(@bookclub, @assigned_book)
    end
  end

end
