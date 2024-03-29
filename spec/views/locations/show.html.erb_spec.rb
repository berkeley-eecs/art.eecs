require 'rails_helper'

RSpec.describe "locations/show", type: :view do
  before(:each) do
    assign(:location, Location.create!(
      name: "Name",
      building_name: "Building Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Building Name/)
  end
end
