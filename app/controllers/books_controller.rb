class BooksController < ApplicationController
  def index
    @books= Book.all
    @book = Book.new
  end

  def show
    @books = Book.find(params[:id])
  end

  def create
    @book = Book.new(books_params)
    if @book.save
      flash[:success] = "create.successfully"
      redirect_to book_path(@book)

    else
      @books = Book.all

      flash[:danger] = "createerrer"
      render :index

    end

  end

  def edit
    @book = Book.find(params[:id])
  end

  def update

    @book = Book.find(params[:id])
  

    if @book.update(books_params)
      flash[:success] = "updatesuccessfully"
      redirect_to book_path

    else
      flash[:danger] = "updat.eerrer"
      render :edit

    end
  end


   def destroy
    book = Book.find(params[:id])

    if book.destroy
      flash[:success] = "destroy.successfully"
      redirect_to books_path

    end

   end

  private
  def books_params
    params.require(:book).permit(:title, :body)
  end

end
