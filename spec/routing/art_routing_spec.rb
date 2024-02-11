require "rails_helper"

RSpec.describe ArtController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/art").to route_to("art#index")
    end

    it "routes to #new" do
      expect(get: "/art/new").to route_to("art#new")
    end

    it "routes to #show" do
      expect(get: "/art/1").to route_to("art#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/art/1/edit").to route_to("art#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/art").to route_to("art#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/art/1").to route_to("art#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/art/1").to route_to("art#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/art/1").to route_to("art#destroy", id: "1")
    end
  end
end
