require "spec_helper"

describe User do
  let(:simple_user) { users(:simple_user) }
  describe "validations" do
    it { should validate_presence_of(:email) }
  end

  it "works" do
    simple_user.email.should == 'simple@simple.com'
  end
end