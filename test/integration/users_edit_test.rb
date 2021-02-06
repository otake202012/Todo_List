require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:michael)
  end

test "unsuccessful edit" do
  get users_edit_path
  assert_template 'users/edit'
  patch user_path(@user), params: { user: { name:  "",
                                            email: "foo@invalid",
                                            password:              "foo",
                                            password_confirmation: "bar" } }

end

end
