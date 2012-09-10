require 'spec_helper'

FixtureBuilder.configure do |fbuilder|
  # rebuild fixtures automatically when these files change:
  fbuilder.files_to_check += Dir["spec/support/fixture_builder.rb"]
  fbuilder.skip_tables = %w( rails_admin_history)
  # now declare objects
  fbuilder.factory do

    #Users
    admin_user = User.create!(:email => "admin@admin.com", :password => 'password', :firstname => "admin", :lastname => 'admin')
    admin_user.confirm!
    name(:admin, admin_user)
    simple_user = User.create!(:email => "simple@simple.com", :password => 'password', :firstname => "simple", :lastname => 'simple')
    simple_user.confirm!
    name(:simple_user, simple_user)

  end
end