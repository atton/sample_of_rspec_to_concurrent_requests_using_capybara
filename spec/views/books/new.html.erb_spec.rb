require 'rails_helper'

RSpec.describe "books/new", type: :view do
  before(:each) do
    assign(:book, Book.new(
      :name => "MyString",
      :isbn => 1,
      :price => 1
    ))
  end

  it "renders new book form" do
    render

    assert_select "form[action=?][method=?]", books_path, "post" do

      assert_select "input#book_name[name=?]", "book[name]"

      assert_select "input#book_isbn[name=?]", "book[isbn]"

      assert_select "input#book_price[name=?]", "book[price]"
    end
  end
end
