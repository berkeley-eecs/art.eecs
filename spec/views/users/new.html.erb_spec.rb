require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      email: "MyString",
      name: "MyString",
      is_admin: false,
      is_moderator: false,
      is_published: false,
      bio: nil,
      url: "MyString",
      profile_image: nil,
      image_url: "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input[name=?]", "user[email]"

      assert_select "input[name=?]", "user[name]"

      assert_select "input[name=?]", "user[is_admin]"

      assert_select "input[name=?]", "user[is_moderator]"

      assert_select "input[name=?]", "user[is_published]"

      assert_select "input[name=?]", "user[bio]"

      assert_select "input[name=?]", "user[url]"

      assert_select "input[name=?]", "user[profile_image]"

      assert_select "input[name=?]", "user[image_url]"
    end
  end
end
