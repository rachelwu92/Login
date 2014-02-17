require 'spec_helper'

describe User do

=begin
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
=end



  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end

end
