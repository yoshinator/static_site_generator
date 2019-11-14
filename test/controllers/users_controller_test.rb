require 'test_helper'


class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
    $stdout.puts @user.attributes
  end

  test "get index shoudl redirect to root if not logged in" do
    get users_url
    assert_redirected_to root_path
  end

  test "get new should redirect to root if not logged in and user not admin" do
    get new_user_url 
    assert_response :success
  end

  # test "should create user" do
  #   assert_difference('User.count') do
  #     post users_url, params: { user: { email: @user.email, f_name: @user.f_name, l_name: @user.l_name, username: @user.username } }
  #   end

  #   assert_redirected_to user_url(User.last)
  # end

  test "should redirect if user is not loggedin" do
    get user_url(@user)
    assert_redirected_to root_path
  end

  test "edit user should redirect if user is not logged in" do
    get edit_user_url(@user)
    assert_redirected_to root_path
  end

  test "update user should redirect if user not logged in" do
    patch user_url(@user), params: { user: { email: @user.email, f_name: @user.f_name, l_name: @user.l_name, username: @user.username } }
    assert_redirected_to root_path
  end

  test "destroy user should redirect if user not logged in" do
    assert_difference('User.count', 0) do
      delete user_url(@user)
    end
  # assert_redirected_to users_url
      assert_redirected_to root_path
  end
end
