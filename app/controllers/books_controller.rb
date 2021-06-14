class BooksController < ApplicationController
  def index
    @books= Book.all
  end

  def show
    @books = Book.find(params[:id])
  end

  def new
    @home = Book.index
  end

  def create
    book = Book.new(books_params)
    if book.save
      flash[:success] = "successfully"
      redirect_to book_path(book)

    else
      flash[:danger] = "errer"
    end

  end



  def edit
    @books = Book.find(params[:id])


  end

  def update
    book = Book.find(params[:id])

    if book.update(books_params)
      flash[:success] = "successfully"
      redirect_to book_path

    else
      flash[:danger] = "errer"
    render :edit

    end



  end


   def destroy
    book = Book.find(params[:id])

    if book.destroy
      flash[:success] = "successfully"
      redirect_to books_path

    end

   end

  private
  def books_params
    params.require(:book).permit(:title, :body)
  end

end
