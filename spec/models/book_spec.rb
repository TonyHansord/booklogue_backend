require "rails_helper"

RSpec.describe Book, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:author) }
  end

  describe "associations" do
    it { is_expected.to have_and_belong_to_many(:users) }
    it { is_expected.to have_many(:notes) }
  end

  describe "attributes" do
    it "has title and author attributes" do
      book = Book.new
      book.title = "The Great Gatsby"
      book.author = "F. Scott Fitzgerald"
      expect(book.title).to eq("The Great Gatsby")
      expect(book.author).to eq("F. Scott Fitzgerald")
    end
  end
end
