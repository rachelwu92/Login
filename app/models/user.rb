class User < ActiveRecord::Base	

      ## The success return code
  @@SUCCESS =   1

    ## Cannot find the user/password pair in the database (for login only)
  @@ERR_BAD_CREDENTIALS =  -1

    ## trying to add a user that already exists (for add only)
  @@ERR_USER_EXISTS  =  -2

    ## invalid user name (empty or longer than MAX_USERNAME_LENGTH) (for add, or login)
  @@ERR_BAD_USERNAME =  -3

    ## invalid password name (longer than MAX_PASSWORD_LENGTH) (for add)
  @@ERR_BAD_PASSWORD =  -4


    ## The maximum length of user name
  @@MAX_USERNAME_LENGTH = 128

    ## The maximum length of the passwords
  @@MAX_PASSWORD_LENGTH = 128

  def __init__()
      self._reset()
  end

  def self.add (user, password)

    if User.find_by_user(user) != nil
      return @@ERR_USER_EXISTS
    end

    def self.valid_username(username)
      if username != "" and username.length<=@@MAX_USERNAME_LENGTH
        return true
      else
        return false
      end
    end

    def self.valid_password(password)
      return password.to_s.length <= @@MAX_PASSWORD_LENGTH
    end

    if not self.valid_username(user)
      return @@ERR_BAD_USERNAME
    end

    if not self.valid_password(password)
      return @@ERR_BAD_PASSWORD    
    end

    data = User.new(user: user, password: password)
    data.save
    data.count = 1
    data.save

  end

  def self.login(user, password)

    if User.find_by_user(user) == nil
      return @@ERR_BAD_CREDENTIALS
    end

    data = User.find_by_user(user)
    if data.password != password
      return @@ERR_BAD_CREDENTIALS
    end
    data.count += 1
    data.save
    return data.count 

  end

  def TESTAPI_resetFixture()
        self._reset ()
  end

end
