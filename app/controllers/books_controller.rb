class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(book_params)
  end

  def new
    @home = Book.index
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_path
  end

  def edit
    @books = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(books_params)
    redirect_to books_path
  end


   def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
   end

  private
  def books_params
    params.require(:book).permit(:title, :body)
  end

end
