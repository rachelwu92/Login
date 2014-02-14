class UsersController < ApplicationController
  def new
  end

  def add(params)
    @name = params[:user]
    @pass = params[:password]
    @user = User.add(@name, @pass)
  end

  def login(params)
    @name = params[:user]
    @pass = params[:password]
    @user = User.login(@name, @pass)
  end

  def unittest
  end

  def resetFixture
  end


end
