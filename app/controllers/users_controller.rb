class UsersController < ApplicationController
#  require json
  def new
    user = User.new
    user.save
  end

  def add
    name = params[:user]
    pass = params[:password]
    user = User.add(name,pass)
    number = 1
      if user > 0
        hash = {:errCode=>user, :count=>number }
        hash.to_json
        render :json => hash
      else
        hash = {:errCode=>user}
        hash.to_json
        render :json => hash
      end 
  end

  def login
    name = params[:user]
    pass = params[:password]
    user = User.login(name, pass)
    account = User.find_by(name)
    number = account.count
      if user > 0
        hash = {:errCode=>user, :count=>number }
        hash.to_json
        render :json => hash
      else
        hash = {:errCode=>user}
        hash.to_json
        render :json => hash
      end
  end

  def TESTAPI_unitTests
    result = User.TESTAPI_unitTests
    if result > 0
    hash = {:nrFailed => 0, :output => "", :totalTests => 10 }
    hash.to_json
    render :json => hash
    end
  end

  def TESTAPI_resetFixture
    result = User.TESTAPI_resetFixture
    hash = {:errCode => result }
    hash.to_json
    render :json => hash
  end


end
