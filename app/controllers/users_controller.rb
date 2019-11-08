class UsersController < ApplicationController
  def index
    redirect_to new_post_path
  end

  def create

  end

  def new
    @user = User.all
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end
end
