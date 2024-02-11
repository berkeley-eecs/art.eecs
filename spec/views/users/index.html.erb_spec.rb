require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        email: "Email",
        name: "Name",
        is_admin: false,
        is_moderator: false,
        is_published: false,
        bio: nil,
        url: "Url",
        profile_image: nil,
        image_url: "Image Url"
      ),
      User.create!(
        email: "Email",
        name: "Name",
        is_admin: false,
        is_moderator: false,
        is_published: false,
        bio: nil,
        url: "Url",
        profile_image: nil,
        image_url: "Image Url"
      )
    ])
  end

  it "renders a list of users" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Url".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Image Url".to_s), count: 2
  end
end
