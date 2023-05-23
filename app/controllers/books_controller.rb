class BooksController < ApplicationController
  def new

  end

  def show
    @book = Book.find(params[:id])
    @user = @book.user
  end

  def index
    @books = Book.all
    @book = Book.new
    @user = current_user
    
  end

  def edit
    @user = User.find(params[:id])
    @user.id = current_user.id
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book)
  end


  private

  def book_params
    params.require(:book).permit(:title, :body, :user_id)
  end

end
