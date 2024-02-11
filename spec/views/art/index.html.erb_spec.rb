require 'rails_helper'

RSpec.describe "art/index", type: :view do
  before(:each) do
    assign(:art, [
      Art.create!(
        title: "Title",
        description: nil,
        artist_name: "MyText",
        last_editor: nil,
        created_location: "Created Location",
        url: "Url",
        image: nil,
        classification: "Classification",
        is_published: false,
        location: nil,
        artist: nil
      ),
      Art.create!(
        title: "Title",
        description: nil,
        artist_name: "MyText",
        last_editor: nil,
        created_location: "Created Location",
        url: "Url",
        image: nil,
        classification: "Classification",
        is_published: false,
        location: nil,
        artist: nil
      )
    ])
  end

  it "renders a list of art" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Created Location".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Url".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Classification".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
