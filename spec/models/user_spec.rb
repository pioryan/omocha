require "spec_helper"

describe User do
  let(:simple_user) { users(:simple_user) }
  describe "validations" do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:firstname) }
    
    #this test is the old version of the test above
    it "should validate presence of firstname" do
      user = User.new(:email => "admin1@admin.com", :password => 'password')
      user.should have(1).errors_on(:firstname)
    end
    
   it "should validate presence of lastname" do
      user = User.new(:email => "admin1@admin.com", :password => 'password')
      user.should have(1).errors_on(:lastname)
    end    
    

  end

  it "works" do
    simple_user.email.should == 'simple@simple.com'
  end
end