require "rails_helper"

RSpec.describe ReadingTimesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/reading_times").to route_to("reading_times#index")
    end

    it "routes to #new" do
      expect(get: "/reading_times/new").to route_to("reading_times#new")
    end

    it "routes to #show" do
      expect(get: "/reading_times/1").to route_to("reading_times#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/reading_times/1/edit").to route_to("reading_times#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/reading_times").to route_to("reading_times#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/reading_times/1").to route_to("reading_times#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/reading_times/1").to route_to("reading_times#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/reading_times/1").to route_to("reading_times#destroy", id: "1")
    end
  end
end
