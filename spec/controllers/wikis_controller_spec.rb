require 'rails_helper'

RSpec.describe WikisController, type: :controller do
  describe "GET index" do
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET show" do
    it "renders the show template" do
      get :show
      expect(response).to render_template("show")
    end
  end

end
