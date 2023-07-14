require "rails_helper"

RSpec.describe User, type: :model do
  describe "validations" do
    before(:each) do
      @user = User.create(
        name: "Test User",
        email: "",
      )
    end

    it "requires an email" do
      expect(@user.errors[:email]).to include("can't be blank")
    end
  end
end
