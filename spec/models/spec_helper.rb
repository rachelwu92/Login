require 'spec_helper'

describe User do

  before { @user = User.new(name: "Example User", password: "pass") }

  subject { @user }

  it { should respond_to(:user) }
  it { should respond_to(:password) }
end

#describe 
