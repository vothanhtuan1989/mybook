require "rails_helper"

RSpec.describe ReadingMissionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/reading_missions").to route_to("reading_missions#index")
    end

    it "routes to #new" do
      expect(get: "/reading_missions/new").to route_to("reading_missions#new")
    end

    it "routes to #show" do
      expect(get: "/reading_missions/1").to route_to("reading_missions#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/reading_missions/1/edit").to route_to("reading_missions#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/reading_missions").to route_to("reading_missions#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/reading_missions/1").to route_to("reading_missions#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/reading_missions/1").to route_to("reading_missions#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/reading_missions/1").to route_to("reading_missions#destroy", id: "1")
    end
  end
end
