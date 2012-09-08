require "spec_helper"

describe User do
  let(:simple_user) { users(:simple_user) }
  describe "validations" do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:firstname) }
    it "should validate presence of firstname" do
      user = User.new(:email => "admin1@admin.com", :password => 'password')
      user.valid?
      user.should have(0).errors_on(:firstname)
      user.should be_valid
    end
  end

  it "works" do
    simple_user.email.should == 'simple@simple.com'
  end
end