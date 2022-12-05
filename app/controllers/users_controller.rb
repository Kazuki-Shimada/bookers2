class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
    @book = Book.new
    @books = @user.books
    @users = User.all
  end
  def index
    @user = current_user
    @users = User.all
    @book = Book.new
    @books = @user.books
  end
end
