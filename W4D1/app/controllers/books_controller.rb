class BooksController < ApplicationController
  def index
    @books = Book.all
    render :index
  end

  def new
    # your code here
  end

  def create
    book_new = Book.new(book_params)
    if book_new.save
      redirect_to books_url
    else
      flash.now[:errors] = book.errors.full_messages
      render :new
    end
  end

  def destroy
    book_to_be_destoried = Book.find(params[:id])

    book_to_be_destoried.destory
    redirect_to books_url

  end

  private
  def book_params
    params.require(:book).permit(:title, :author)
  end
end
