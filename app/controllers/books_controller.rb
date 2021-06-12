class BooksController < ApplicationController
  def index
  end

  def show
  end

  def new
    @homes = Book.index
  end

  def create
    books = Book.new(books_params)
    books.save
    redirect_to books_path
  end

  def edit
  end

  private
  def booksparams
    params.require(:book).permit(:title, :category, :body)
  end

end
