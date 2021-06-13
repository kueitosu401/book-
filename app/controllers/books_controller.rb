class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @books = Book.find(params[:id])
  end

  def new
    @homes = Book.index
  end

  def create
    @books = Book.new(books_params)
    @books.save
    redirect_to books_path
  end

  def edit
    @books = Book.find(params[:id])
  end
  
   def destroy
    books = Book.find(params[:id])
    books.destroy
    redirect_to books_path  end

  private
  def books_params
    params.require(:book).permit(:title, :category, :body)
  end

end
