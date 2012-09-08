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

  describe "associations" do
    it {should have_many(:preferences)}
  end

  it "works" do
    simple_user.email.should == 'simple@simple.com'
  end

  describe "preferences" do
    context "language" do

      it "should store language preference of user" do
        user_preference = Preference.create!(:user => simple_user, :key => 'language', :value => 'en')
        user_preference.user == simple_user
      end

      it "should retrieve language preference of user" do
        user_preference = Preference.create!(:user => simple_user, :key => 'language', :value => 'en')
        simple_user.preferences.where(:key => 'language').first.value.should == 'en'
      end

      describe "#language" do
        it "should retrieve language pref" do
          user_preference = Preference.create!(:user => simple_user, :key => 'language', :value => 'en')
          simple_user.language.should == 'en'
        end
      end

      describe "#language=" do
        it "should retrieve language pref" do
          simple_user.language = "jp"
          simple_user.save
          simple_user.language.should == 'jp'
        end

        context "on update" do
          it "should not create another entry to preference table" do
            simple_user.language = "jp"
            simple_user.save
            simple_user.language.should == 'jp'
            simple_user.language = "en"
            simple_user.preferences.count.should == 1
            simple_user.language.should == 'en'
          end
        end
      end

      describe "#receive_emails" do
        it "should retrieve receive_emails pref" do
          user_preference = Preference.create!(:user => simple_user, :key => 'receive_emails', :value => true)
          simple_user.receive_emails.should == true
        end
      end

      describe "#receive_emails=" do
        it "should retrieve receive_emails pref" do
          simple_user.receive_emails = false
          simple_user.save
          simple_user.receive_emails.should == false
        end
      end

    end



  end
end