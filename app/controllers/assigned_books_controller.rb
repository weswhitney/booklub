class AssignedBooksController < ApplicationController

  def new
    @bookclub = Bookclub.find(params[:bookclub_id])
    @assigned_book = AssignedBook.new
  end

  def create
    # if book exists in database
    book_id_hash = Book.where(title: params[:title])

    if book_id_hash.empty?
      # create a book with title, author, description
      book = Book.create!(
      :title => params[:title],
      :author => params[:author]
      )
      # populate book_id_hash with new book_id
      book_id_hash = {book_id: book.id}
    end

    @assigned_book = AssignedBook.new(book_id_hash)
    @assigned_book.bookclub_id = params[:bookclub_id]
    @assigned_book.save

    redirect_to bookclub_path(params[:bookclub_id])
  end
end
