require "test_helper"

class BookStoreControllerTest < ActionDispatch::IntegrationTest
  test "should get books" do
    get book_store_books_url
    assert_response :success
  end
end
