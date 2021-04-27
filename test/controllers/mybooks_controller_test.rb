require "test_helper"

class MybooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mybook = mybooks(:one)
  end

  test "should get index" do
    get mybooks_url
    assert_response :success
  end

  test "should get new" do
    get new_mybook_url
    assert_response :success
  end

  test "should create mybook" do
    assert_difference('Mybook.count') do
      post mybooks_url, params: { mybook: { description: @mybook.description, email: @mybook.email, phone: @mybook.phone, title: @mybook.title } }
    end

    assert_redirected_to mybook_url(Mybook.last)
  end

  test "should show mybook" do
    get mybook_url(@mybook)
    assert_response :success
  end

  test "should get edit" do
    get edit_mybook_url(@mybook)
    assert_response :success
  end

  test "should update mybook" do
    patch mybook_url(@mybook), params: { mybook: { description: @mybook.description, email: @mybook.email, phone: @mybook.phone, title: @mybook.title } }
    assert_redirected_to mybook_url(@mybook)
  end

  test "should destroy mybook" do
    assert_difference('Mybook.count', -1) do
      delete mybook_url(@mybook)
    end

    assert_redirected_to mybooks_url
  end
end
