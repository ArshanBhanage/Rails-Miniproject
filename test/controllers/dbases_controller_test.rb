require "test_helper"

class DbasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dbasis = dbases(:one)
  end

  test "should get index" do
    get dbases_url
    assert_response :success
  end

  test "should get new" do
    get new_dbasis_url
    assert_response :success
  end

  test "should create dbasis" do
    assert_difference('Dbase.count') do
      post dbases_url, params: { dbasis: { description: @dbasis.description, google_pay: @dbasis.google_pay, instagram: @dbasis.instagram, title: @dbasis.title, whatsapp: @dbasis.whatsapp } }
    end

    assert_redirected_to dbasis_url(Dbase.last)
  end

  test "should show dbasis" do
    get dbasis_url(@dbasis)
    assert_response :success
  end

  test "should get edit" do
    get edit_dbasis_url(@dbasis)
    assert_response :success
  end

  test "should update dbasis" do
    patch dbasis_url(@dbasis), params: { dbasis: { description: @dbasis.description, google_pay: @dbasis.google_pay, instagram: @dbasis.instagram, title: @dbasis.title, whatsapp: @dbasis.whatsapp } }
    assert_redirected_to dbasis_url(@dbasis)
  end

  test "should destroy dbasis" do
    assert_difference('Dbase.count', -1) do
      delete dbasis_url(@dbasis)
    end

    assert_redirected_to dbases_url
  end
end
