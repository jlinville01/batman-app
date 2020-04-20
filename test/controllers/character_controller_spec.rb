RSpec.describe CharacterController, :type => :controller do
  describe "Get index" do
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end
  end
end