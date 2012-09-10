require 'spec_helper'

describe UsersController do
  let(:simple_user) {users(:simple_user)}
  describe "show" do
    it "should get user" do
      get :show, :id => simple_user.id
      assigns(:user).should == simple_user
    end
  end
end 
