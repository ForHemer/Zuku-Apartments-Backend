require "rails_helper"

RSpec.describe ApartmentImagesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/apartment_images").to route_to("apartment_images#index")
    end

    it "routes to #show" do
      expect(get: "/apartment_images/1").to route_to("apartment_images#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/apartment_images").to route_to("apartment_images#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/apartment_images/1").to route_to("apartment_images#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/apartment_images/1").to route_to("apartment_images#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/apartment_images/1").to route_to("apartment_images#destroy", id: "1")
    end
  end
end
