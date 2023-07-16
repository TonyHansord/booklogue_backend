require "rails_helper"

RSpec.describe User, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email) }

    it "has a password field" do
      expect(User.new).to respond_to(:password)
    end

    it "is valid if password and password_confirmation match" do
      user = User.new
      user.email = "user@domain.com"
      user.password = "foo"
      user.password_confirmation = "foo"
      expect(user.valid?).to be(true)
    end
  end
end
