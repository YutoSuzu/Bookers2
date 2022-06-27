class BooksController < ApplicationController
  
  before_action :ensure_current_user,{only:[:edit,:update]}
  
  def ensure_current_user
    @book = Book.find(params[:id])
    if @book.user_id != current_user.id
      redirect_to books_path
    end
  end
  
  def index
    @books = Book.all
    @book = Book.new
    @user = current_user
    
    
  end

  def show
    @book = Book.all
    


  end

  def edit
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
    flash[:success]="You have created book successfully."
  end

  def destory
  end

  def update
  end

  private

  def book_params
    params.require(:book).permit(:title, :body, :image)
  end
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction, :id)
  end
end