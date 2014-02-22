class UsersController < ApplicationController

  def new
    user = User.new
    user.save
  end

  def home
    name = params[:name_add]
    pass = params[:p_add]
    @user = User.new(name, pass)
=begin
    if params[:login]
      redirect_to(:action => "login")
    end
    if params[:add_user]
      echo "adding"
      redirect_to(:action => "add")   
    end
=end
  end

#  def index
#    redirect_to(:action => "add")
#  end

  def create
    params.permit!	
    @user = User.new(params[:user], params[:password])
    if params[:login]
      redirect_to(:action => "login")
    elsif params[:add_user]
      redirect_to(:action => "add")   
    end
#    if @user.save
#      redirect_to(:action => "add")
#    end
  end

  def show
    if params[:login]
      redirect_to(:action => "login")
    elsif params[:add_user]
      redirect_to(:action => "add")   
    end
  end

  def add
    name = params[:user]
    pass = params[:password]
    user = User.add(name,pass)
#    inter = @user
#    user = User.add(inter.user, inter.password)
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
    name = params[:name]
    pass = params[:p]
    user = User.login(user, pass)  
#    user = @user
    account = User.find_by(user)
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

#  private

#  def user_params
#    params.require(:ad).permit(:user, :password, :count)
#  end

end
