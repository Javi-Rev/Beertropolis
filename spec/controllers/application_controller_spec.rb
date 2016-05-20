require 'rails_helper'
require 'spec_helper'

RSpec.describe BeersController, :type => :controller do
  describe "GET index" do
    it "renders the beers index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "index" do
    it "renders the beers show template" do
      get :index
      expect(response).to redirect_to('show')
    end
  end

  describe "index" do
    it "renders the beers new template" do
      get :index
      expect(response).to render_template("new")
    end
  end

  describe "index" do
    it "renders the edit beer template" do
      get :index
      expect(response).to render_template("edit") 
    end
  end

 
end
