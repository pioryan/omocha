require 'spec_helper'

describe Preference do
  describe "validations" do
    it { should validate_presence_of(:key)}
    it { should validate_presence_of(:value)}
  end

  describe "associations" do
    it {should belong_to(:user)}
  end
end
