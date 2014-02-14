require 'spec_helper'

describe User do

  before { @user = User.new(name: "Example User", password: "pass") }

  subject { @user }

  it { should respond_to(:user) }
  it { should respond_to(:password) }

  it "should add User" do
    @user.should eql(1)
  end

  it "should reset"
    result = User.TESTAPI_resetFixture
    resutl.should eql(1)
  end

  it "should have a good name length"
    @user should be less than 128
  end

end
