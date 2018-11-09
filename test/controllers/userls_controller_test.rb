require 'test_helper'

class UserlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userl = userls(:one)
  end

  test "should get index" do
    get userls_url
    assert_response :success
  end

  test "should get new" do
    get new_userl_url
    assert_response :success
  end

  test "should create userl" do
    assert_difference('Userl.count') do
      post userls_url, params: { userl: { email: @userl.email, login: @userl.login, name: @userl.name } }
    end

    assert_redirected_to userl_url(Userl.last)
  end

  test "should show userl" do
    get userl_url(@userl)
    assert_response :success
  end

  test "should get edit" do
    get edit_userl_url(@userl)
    assert_response :success
  end

  test "should update userl" do
    patch userl_url(@userl), params: { userl: { email: @userl.email, login: @userl.login, name: @userl.name } }
    assert_redirected_to userl_url(@userl)
  end

  test "should destroy userl" do
    assert_difference('Userl.count', -1) do
      delete userl_url(@userl)
    end

    assert_redirected_to userls_url
  end
end
