require 'rails_helper'

RSpec.describe "art/show", type: :view do
  before(:each) do
    assign(:art, Art.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Created Location/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Classification/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
